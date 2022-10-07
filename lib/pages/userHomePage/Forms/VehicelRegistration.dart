import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import 'package:vehicle_registration_system/utils/responsiveLayout.dart';
import 'package:vehicle_registration_system/widget/radioGroup.dart';
import 'package:vehicle_registration_system/widget/textField.dart';

import '../../../constants/slide.dart';

class VehicelRegistration extends StatefulWidget {
  const VehicelRegistration({super.key});

  @override
  State<VehicelRegistration> createState() => _VehicelRegistrationState();
}

class _VehicelRegistrationState extends State<VehicelRegistration> {
  String? imageFile;
  Uint8List webImage = Uint8List(10);
  String? signatureFile;
  Uint8List webSignature = Uint8List(10);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: ResponsiveLayout.isSmallScreen(context)
            ? size.width
            : size.width * .95,
        height: ResponsiveLayout.isSmallScreen(context)
            ? size.height
            : size.height * .95,
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: ()=>SmartDialog.dismiss(), icon: const Icon(Icons.close, color: primaryColor, size: 35,)),
                        ],
                      ),
                      title(size, "1. PARTICULARS OF VEHICLE OWNER"),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * .7,
                            child: Wrap(
                                alignment: WrapAlignment.center,
                                runAlignment: WrapAlignment.center,
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  CustomTextField(
                                    width: size.width * .32,
                                    hint: "FULL NAME OF OWNER(S)",
                                    keyboardType: TextInputType.name,
                                    isCapsOnly: true,
                                  ),
                                  CustomTextField(
                                    width: size.width * .32,
                                    hint: "POSTAL ADDRESS",
                                    keyboardType: TextInputType.text,
                                    isCapsOnly: true,
                                  ),
                                  CustomTextField(
                                    width: size.width * .32,
                                    hint: "TELEPHONE NO(S)",
                                    keyboardType: TextInputType.phone,
                                    isCapsOnly: true,
                                  ),
                                  CustomTextField(
                                    width: size.width * .32,
                                    hint: "EMAIL ADDRESS",
                                    keyboardType: TextInputType.emailAddress,
                                    isCapsOnly: false,
                                  ),
                                  CustomTextField(
                                    width: size.width * .2,
                                    hint: "TIN NO.",
                                    keyboardType: TextInputType.text,
                                    isCapsOnly: false,
                                  ),
                                  CustomTextField(
                                    width: size.width * .2,
                                    hint: "OCCUPATION",
                                    keyboardType: TextInputType.text,
                                    isCapsOnly: true,
                                  )
                                ]),
                          ),
                          uploadSignature(),
                          uploadImage(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      title(size, "2. PARTICULARS OF VEHICLE"),
                      const SizedBox(height: 8),
                      Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            CustomTextField(
                              width: size.width * .2,
                              hint: "CHASSIS NO.",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "YEAR OF MANUFACTURE",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "VEHICLE MAKER/BUILDER",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "MODEL NAME/NO.",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "COLOR(S)",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            SizedBox(
                              width: size.width * .3,
                              child: ListTile(
                                title: Text(
                                  "MEASUREMENT IN (CM)",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomTextField(
                                      width: size.width * .1,
                                      hint: " WIDTH",
                                      keyboardType: TextInputType.text,
                                      isCapsOnly: true,
                                    ),
                                    CustomTextField(
                                      width: size.width * .1,
                                      hint: " WIDTH",
                                      keyboardType: TextInputType.text,
                                      isCapsOnly: true,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "COUNTRY OF IMPORTATION",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "NUMBER OF AXILS",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            CustomTextField(
                              width: size.width * .2,
                              hint: "NUMBER OF TYRES(Excl. Spare)",
                              keyboardType: TextInputType.text,
                              isCapsOnly: true,
                            ),
                            SizedBox(
                              width: size.width * .3,
                              child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    "VEHICLES USE(Tick One)",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: primaryColor),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Row(
                                      children: [
                                        CustomRadioGroup(
                                          title: "PRIVATE",
                                          onChanged: ((p0) => print(p0)),
                                          value: 'PRIVATE',
                                          groupValue: 'PRIVATE',
                                        ),
                                        const SizedBox(width: 10),
                                        CustomRadioGroup(
                                          title: "COMMERCIAL",
                                          onChanged: ((p0) => print(p0)),
                                          value: 'COMMERCIAL',
                                          groupValue: 'PRIVATE',
                                        )
                                      ],
                                    ),
                                  )),
                            )
                          ]),
                      const SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                          text: 'DECLARATION: ',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                          children: const <TextSpan>[
                            TextSpan(
                                text: declaration,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                       TextButton(
                        style: TextButton.styleFrom(backgroundColor: primaryColor, padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                        onPressed: () {}, child: Text("SUBMIT APPLICATION", style: GoogleFonts.poppins(fontSize: 22,color: Colors.white),)),
                        const SizedBox(height: 15,)
                    ]))));
  }

  void pickUploadProfilePic() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 90,
    );
    if (image != null) {
      var file = await image.readAsBytes();
      setState(() {
        imageFile = "hasFile";
        webImage = file;
      });
    }
  }

  void pickUploadSignature() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 90,
    );
    if (image != null) {
      var file = await image.readAsBytes();
      setState(() {
        imageFile = "signatureFile";
        webSignature = file;
      });
    }
  }

  Widget uploadImage() {
    return GestureDetector(
      onTap: () {
        pickUploadProfilePic();
      },
      child: Card(
        elevation: 10,
        child: Container(
          height: 120,
          width: 120,
          alignment: Alignment.center,
          child: imageFile == null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                      child: Text(
                    'RRECENT PASSPORT PICTURE OF VEHICLE OWNER',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontSize: 9),
                  )),
                )
              : Image.memory(webImage,
                  height: 120, width: 120, fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget uploadSignature() {
    return GestureDetector(
      onTap: () {
        pickUploadSignature();
      },
      child: Card(
        elevation: 10,
        child: Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          child: signatureFile == null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                      child: Text(
                    'UPLOAD IMAGE OF YOUR SIGNATURE',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontSize: 9),
                  )),
                )
              : Image.memory(webSignature,
                  height: 80, width: 80, fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget title(Size size, String title) {
    return SizedBox(
      width: size.width * .8,
      child: Center(
        child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                title,
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            )),
      ),
    );
  }
}

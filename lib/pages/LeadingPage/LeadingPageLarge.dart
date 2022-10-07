import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/pages/Contact.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import 'package:vehicle_registration_system/widget/NavBar.dart';
import 'package:vehicle_registration_system/widget/servicesCard.dart';
import '../../constants/slide.dart';
import 'FooterPage.dart';

class LeadingPageLarge extends StatefulWidget {
  const LeadingPageLarge({super.key});
  @override
  State<LeadingPageLarge> createState() => _LeadingPageLargeState();
}

class _LeadingPageLargeState extends State<LeadingPageLarge> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.8],
          colors: [
            Color(0xFF2f1a3b),
            Color(0xFF6ccad1),
          ],
        )),
        child: ListView(     
            children: [
              const NavBar(),
              Card(
                margin: const EdgeInsets.all(15),
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Column(
                          children: [
                            const Text(
                              "Welcome to",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "VHRS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              info,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFF2f1a3b),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Getting started",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1,
                            viewportFraction: 1),
                        items: slideImages
                            .map((e) => Image.network(e['image']!))
                            .toList(),
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  "Our Services",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: 10,
                  children: services.map((e) {
                    return ServicesCard(
                      services: e,
                    );
                  }).toList(),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 2,
                height: 40,
                indent: 50,
                endIndent: 50,
              ),
              const ListTile(
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: ContactUsPage(),
              )
            ,
            const SizedBox(height: 15),
            const FooterPage()
            
            ]));
  }
}

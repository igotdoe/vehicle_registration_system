import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({super.key});

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2f1a3b),
      padding: const EdgeInsets.all(5.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      subtitle: Column(children: []),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Our Services',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Vehicle Registration',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Vehicle Insurance',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Vehicle Renewal',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Vehicle Transfer',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Vehicle Loan',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Contact Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  color: whiteColors,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Text('Address: 123, AAMUSTED Street, Tanoso Kumasi, Ghana',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.call,color: whiteColors,size: 20,),
                             SizedBox(width: 5,),
                             Text('+233 24 000 0000',
                                style:  TextStyle(color: Colors.white)),
                          ],
                        ),
                         const SizedBox(
                              height: 5,
                            ),
                         Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.call,
                                  color: whiteColors,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('+233 24 000 0000',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                             const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.email,
                                  color: whiteColors,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('vhsr@info.com',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children:  [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FontAwesomeIcons.facebook,
                                      color: whiteColors,
                                      size: 20,
                                    )),
                                IconButton(
                                  onPressed: (){},
                                 icon:const Icon( FontAwesomeIcons.twitter,
                                  color: whiteColors,
                                  size: 20,
                                )),
                                 IconButton(
                                  onPressed: (){},
                                 icon:const Icon( FontAwesomeIcons.instagram,
                                  color: whiteColors,
                                  size: 20,
                                ))
                              ],
                            ),
                       
                      ]),
                      
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 30,
              indent: 50,
              endIndent: 50,
              thickness: 2,
            ),
            const Text(
              'Copyright ©2022, All Rights Reserved.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Colors.white54),
            ),
            const Text(
              'Powered by ITE Level 400',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Colors.white54),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
    );
  }
}
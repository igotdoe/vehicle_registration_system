import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_registration_system/controllers/navigation.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import '../../utils/responsiveLayout.dart';
import '../../widget/NavigationButton.dart';

class UserHomeTopBar extends StatelessWidget {
  const UserHomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigation, child) {
      return Container(
          height: 80,
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveLayout.isSmallScreen(context) ? 35 : 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              child: Container(
                width: 90,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: LinearGradient(
                    colors: [
                      primaryColor,
                      primaryColor.withOpacity(.5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  'VHRS',
                  style: GoogleFonts.laila(
                    fontSize: 25,
                    color: whiteColors,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                NavigationButtons(
                  onHover: (p0) =>
                      navigation.onUserHover(p0, UserPages.APPOINTMENT),
                  text: 'Appointment',
                  onPressed: () =>
                      navigation.changeUserPage(UserPages.APPOINTMENT),
                  isHover:
                      navigation.currentUserHoverPage == UserPages.APPOINTMENT,
                  isSelected:
                      navigation.currentUserPage == UserPages.APPOINTMENT,
                ),
                const SizedBox(width: 5),
                NavigationButtons(
                    onHover: (p0) =>
                        navigation.onUserHover(p0, UserPages.VEHICLE),
                    text: 'Vehicle Registration',
                    onPressed: () =>
                        navigation.changeUserPage(UserPages.VEHICLE),
                    isHover:
                        navigation.currentUserHoverPage == UserPages.VEHICLE,
                    isSelected:
                        navigation.currentUserPage == UserPages.VEHICLE),
                const SizedBox(width: 5),
                NavigationButtons(
                    onHover: (p0) =>
                        navigation.onUserHover(p0, UserPages.LINCENSE),
                    text: 'Driver License',
                    onPressed: () =>
                        navigation.changeUserPage(UserPages.LINCENSE),
                    isHover:
                        navigation.currentUserHoverPage == UserPages.LINCENSE,
                    isSelected:
                        navigation.currentUserPage == UserPages.LINCENSE),
                const SizedBox(width: 5),
                NavigationButtons(
                    onHover: (p0) => navigation.onUserHover(p0, UserPages.ROAD),
                    text: 'Road Worthiness',
                    onPressed: () => navigation.changeUserPage(UserPages.ROAD),
                    isHover: navigation.currentUserHoverPage == UserPages.ROAD,
                    isSelected: navigation.currentUserPage == UserPages.ROAD),
                const SizedBox(width: 5),
                NavigationButtons(
                    onHover: (p0) =>
                        navigation.onUserHover(p0, UserPages.SIGNOUT),
                    text: 'Sign Out',
                    onPressed: () =>
                        navigation.changeUserPage(UserPages.SIGNOUT),
                    isHover:
                        navigation.currentUserHoverPage == UserPages.SIGNOUT,
                    isSelected:
                        navigation.currentUserPage == UserPages.SIGNOUT),
              ],
            )
          ]));
    });
  }
}

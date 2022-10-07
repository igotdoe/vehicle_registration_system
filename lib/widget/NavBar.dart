import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import 'package:vehicle_registration_system/widget/NavigationButton.dart';
import '../controllers/navigation.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigation, child) {
      return Container(
        height: 80,
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveLayout.isSmallScreen(context) ? 35 : 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            
            ResponsiveLayout.isSmallScreen(context)
                ? PopupMenuButton(
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 35,
                    ),
                    itemBuilder: (_) {
                      return <PopupMenuItem>[
                        PopupMenuItem(
                          value: Pages.HOME,
                          child: NavigationButtons(
                            text: "Home",
                            onPressed: () =>
                                navigation.switchPage(Pages.HOME, context),
                            onHover: (val) =>
                                navigation.onHover(val, Pages.HOME),
                            isHover: navigation.currentHoverPage == Pages.HOME,
                            isSelected: navigation.currentPage == Pages.HOME,
                          ),
                        ),
                        PopupMenuItem(
                          value: Pages.HOME,
                          child: NavigationButtons(
                            text: "About",
                            onPressed: () =>
                                navigation.switchPage(Pages.ABOUT, context),
                            onHover: (val) =>
                                navigation.onHover(val, Pages.ABOUT),
                            isHover: navigation.currentHoverPage == Pages.ABOUT,
                            isSelected: navigation.currentPage == Pages.ABOUT,
                          ),
                        ),
                        PopupMenuItem(
                          value: Pages.SERVICES,
                          child: NavigationButtons(
                            text: "Services",
                            onPressed: () =>
                                navigation.switchPage(Pages.SERVICES, context),
                            onHover: (val) =>
                                navigation.onHover(val, Pages.SERVICES),
                            isHover:
                                navigation.currentHoverPage == Pages.SERVICES,
                            isSelected:
                                navigation.currentPage == Pages.SERVICES,
                          ),
                        ),
                        PopupMenuItem(
                          value: Pages.CONTACT,
                          child: NavigationButtons(
                            text: "Contact",
                            onPressed: () =>
                                navigation.switchPage(Pages.CONTACT, context),
                            onHover: (val) =>
                                navigation.onHover(val, Pages.CONTACT),
                            isHover:
                                navigation.currentHoverPage == Pages.CONTACT,
                            isSelected: navigation.currentPage == Pages.CONTACT,
                          ),
                        ),
                        PopupMenuItem(
                          value: Pages.LOGIN,
                          child: NavigationButtons(
                            text: "Login",
                            onPressed: () =>
                                navigation.switchPage(Pages.LOGIN, context),
                            onHover: (val) =>
                                navigation.onHover(val, Pages.LOGIN),
                            isHover: navigation.currentHoverPage == Pages.LOGIN,
                            isSelected: navigation.currentPage == Pages.LOGIN,
                          ),
                        ),
                      ];
                    },
                    onSelected: (value) {},
                  )
                : Row(
                    children: [
                      NavigationButtons(
                        text: "Home",
                        onPressed: () =>
                            navigation.switchPage(Pages.HOME, context),
                        onHover: (val) => navigation.onHover(val, Pages.HOME),
                        isHover: navigation.currentHoverPage == Pages.HOME,
                        isSelected: navigation.currentPage == Pages.HOME,
                      ),
                      const SizedBox(width: 20),
                      NavigationButtons(
                        text: "About",
                        onPressed: () =>
                            navigation.switchPage(Pages.ABOUT, context),
                        onHover: (val) => navigation.onHover(val, Pages.ABOUT),
                        isHover: navigation.currentHoverPage == Pages.ABOUT,
                        isSelected: navigation.currentPage == Pages.ABOUT,
                      ),
                      const SizedBox(width: 20),
                      NavigationButtons(
                        text: "Services",
                        onPressed: () =>
                            navigation.switchPage(Pages.SERVICES, context),
                        onHover: (val) =>
                            navigation.onHover(val, Pages.SERVICES),
                        isHover: navigation.currentHoverPage == Pages.SERVICES,
                        isSelected: navigation.currentPage == Pages.SERVICES,
                      ),
                      const SizedBox(width: 20),
                      NavigationButtons(
                        text: "Contact",
                        onPressed: () =>
                            navigation.switchPage(Pages.CONTACT, context),
                        onHover: (val) =>
                            navigation.onHover(val, Pages.CONTACT),
                        isHover: navigation.currentHoverPage == Pages.CONTACT,
                        isSelected: navigation.currentPage == Pages.CONTACT,
                      ),
                      const SizedBox(width: 20),
                      NavigationButtons(
                        text: "Login",
                        onPressed: () =>
                            navigation.switchPage(Pages.LOGIN, context),
                        onHover: (val) => navigation.onHover(val, Pages.LOGIN),
                        isHover: navigation.currentHoverPage == Pages.LOGIN,
                        isSelected: navigation.currentPage == Pages.LOGIN,
                      ),
                    ],
                  )
          ],
        ),
      );
    });
  }

  handleOnpressed(BuildContext context, Pages page) {}
}

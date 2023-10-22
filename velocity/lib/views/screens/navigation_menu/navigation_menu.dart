import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity/views/screens/home/home.dart';
import 'package:velocity/views/screens/profile/profile.dart';
import 'package:velocity/views/screens/save/save.dart';
import 'package:velocity/views/screens/search/search.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: Color(0xff161a1d),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xff2b2d42),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: Color(0xff2b2d42),
              height: 60,
              elevation: 0,
              indicatorColor: Colors.white.withOpacity(0.1),
              labelTextStyle: MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected),
          child: NavigationBar(
            animationDuration: Duration(seconds: 2),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(
                icon: Icon(
                  Iconsax.home,
                  color: Colors.white,
                ),
                label: 'Home',
                selectedIcon: Icon(
                  Iconsax.home_15,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Iconsax.search_normal,
                  color: Colors.white,
                ),
                label: 'Search',
                selectedIcon: Icon(
                  Iconsax.search_normal_14,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Iconsax.heart,
                  color: Colors.white,
                ),
                label: 'Save',
                selectedIcon: Icon(
                  Iconsax.heart_add5,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Iconsax.user,
                  color: Colors.white,
                ),
                label: 'Profile',
                selectedIcon: Icon(
                  Iconsax.user_edit,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const SearchPage(),
    const Save(),
    const Profile(),
  ];
}

import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

Widget buttonNavBar(BuildContext context) {
  return WaterDropNavBar(
      backgroundColor: Colors.white,
      waterDropColor: Color.fromARGB(255, 173, 42, 32),
      bottomPadding: MediaQuery.of(context).size.height * 0.02,
      barItems: [
        BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home_max_outlined),
        BarItem(
            filledIcon: Icons.shopping_cart,
            outlinedIcon: Icons.shopping_bag_outlined),
        BarItem(
            filledIcon: Icons.notifications, outlinedIcon: Icons.notifications),
        BarItem(filledIcon: Icons.person, outlinedIcon: Icons.person),
      ],
      selectedIndex: 0,
      onItemSelected: (index) {});
}

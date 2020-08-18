import 'package:flutter/material.dart';
import '../home_screens/home_screen.dart';
import 'package:food_app/utils/responsive_screen.dart';
import 'package:food_app/widgets/custom_navigation_bar/custom_navigation_drawer.dart';

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return ResponsiveScreen(
      mediumScreen: LargeHomeScreen(),
      smallScreen: HomeScreen(),
    );
  }
}

class LargeHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsingNavigationDrawer(),
    );
  }
}

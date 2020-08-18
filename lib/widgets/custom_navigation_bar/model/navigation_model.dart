import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screens/sub_apps/camera_app.dart';
import 'package:food_app/screens/home_screens/sub_apps/dashboard_app.dart';
import 'package:food_app/screens/home_screens/sub_apps/favorites_app.dart';
import 'package:food_app/screens/home_screens/sub_apps/search_app.dart';
import 'package:food_app/screens/home_screens/sub_apps/settings_app.dart';

class NavigationModel {
  String title;
  Icon icon;
  Widget child;
  NavigationModel(
      {@required this.title, @required this.icon, @required this.child});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
      title: "Dashboard",
      icon: Icon(
        Icons.home,
        size: 30.0,
      ),
      child: dashBoardApp),
  NavigationModel(
      title: "Search",
      icon: Icon(
        Icons.search,
        size: 30.0,
      ),
      child: searchApp),
  NavigationModel(
      title: "Food Detector",
      icon: Icon(
        Icons.camera,
        size: 50.0,
        color: Colors.indigo[900],
      ),
      child: cameraApp),
  NavigationModel(
      title: "Favorites",
      icon: Icon(
        Icons.favorite,
        size: 30.0,
      ),
      child: favoritesApp),
  NavigationModel(
      title: "Settings",
      icon: Icon(
        Icons.settings,
        size: 30.0,
      ),
      child: settingsApp),
];

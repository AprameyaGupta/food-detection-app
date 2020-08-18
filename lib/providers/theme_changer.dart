import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class ThemeChanger extends ChangeNotifier {
//   int mode = 0;
  bool isDarkModeOn = false;

  ThemeData getLightTheme(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return kIOSTheme;
    } else {
      return kDefaultTheme;
    }
  }

  ThemeData getDarkTheme(BuildContext context) {
    return darkTheme;
  }
}

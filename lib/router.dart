import 'package:flutter/material.dart';
import 'index.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case HomeScreenRoute:
      return MaterialPageRoute(builder: (context) => ResponsiveHomePage());
    case LoginScreenRoute:
      return MaterialPageRoute(builder: (context) => ResponsiveLoginPage());
    case SignUpScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}

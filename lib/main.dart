import 'package:flutter/material.dart';
import 'package:food_app/router.dart' as router;
import 'index.dart';

void main() => runApp(FoodApp());

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      onGenerateRoute: router.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreenRoute,
      theme: Theme.of(context).platform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      darkTheme: darkTheme,
    );
  }
}

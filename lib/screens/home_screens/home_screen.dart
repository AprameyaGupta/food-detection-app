import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/custom_navigation_bar/model/navigation_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    List<Icon> icons = List<Icon>();
    ThemeData theme = Theme.of(context);
    navigationItems.forEach((element) {
      (element.title != "Logout")
          ? icons.add(element.icon)
          : print('Logout Mila');
    });
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: theme.backgroundColor,
          buttonBackgroundColor: Colors.red[400],
          animationDuration: Duration(milliseconds: 100),
          color: theme.bottomAppBarColor,
          items: icons,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: navigationItems[_currentIndex].child);
  }
}

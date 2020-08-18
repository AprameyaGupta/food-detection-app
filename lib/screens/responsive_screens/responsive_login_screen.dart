import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class ResponsiveLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return ResponsiveScreen(
      mediumScreen: LargeLoginScreen(),
      smallScreen: LoginScreen(),
    );
  }
}

class LargeLoginScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Card(
            elevation: 8,
            color: theme.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: loginBody(context, theme, _controller),
          ),
        ));
  }
}

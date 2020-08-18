import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class LoginScreen extends StatelessWidget{
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: loginBody(context, theme, _controller),
    );
  }
}

Widget loginBody(BuildContext context, ThemeData theme, TextEditingController _controller) {
  return SingleChildScrollView(
    child: Container(
      //if screen size is small then width will be null otherwise a card of width 600
      width: ResponsiveScreen.isMediumScreen(context) ||
              ResponsiveScreen.isLargeScreen(context)
          ? 600
          : null,
      child: Column(
        children: <Widget>[
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                ImageDisplay(
                  left: 30,
                  width: 80,
                  height: 200,
                  assetName: 'assets/images/light-1.png',
                  animationSpeed: 1.5,
                ),
                ImageDisplay(
                  left: 140,
                  width: 80,
                  height: 150,
                  assetName: 'assets/images/light-2.png',
                  animationSpeed: 1.5,
                ),
                ImageDisplay(
                  right: 45,
                  top: 40,
                  width: 80,
                  height: 150,
                  assetName: 'assets/images/clock.png',
                  animationSpeed: 1.5,
                ),
                _title(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                _googleSignIn(_controller),
                _dividingLine(),
                _textFields(theme, _controller),
                _forgetPassword(context, theme),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Login',
                  width: 400,
                  height: 50,
                  onTapMethod: () =>
                      Navigator.pushNamed(context, HomeScreenRoute),
                ),
                SizedBox(
                  height: 20,
                ),
                _signUp(context),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

// Widgets

Widget _title() {
  return FadeAnimation(
    1.5,
    Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget _textFields(ThemeData theme, TextEditingController controller) {
  return Column(
    children: <Widget>[
      CustomTextField(
        text: 'Enter Email',
        theme: theme,
        width: 400,
        controller: controller,
      ),
      SizedBox(
        height: 10.0,
      ),
      CustomTextField(
        text: 'Enter Password',
        theme: theme,
        width: 400,
        controller: controller,
      )
    ],
  );
}

Widget _dividingLine() {
  return Container(
    width: 400,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FadeAnimation(
        1.5,
        Row(children: <Widget>[
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 30,
            endIndent: 30,
          )),
          Text(
            "OR",
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 30,
            endIndent: 30,
          )),
        ]),
      ),
    ),
  );
}

Widget _googleSignIn(TextEditingController c) {
  return CustomButton(
    onTapMethod: () {print(c.text);},
    childWidget: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Image.asset(
            'assets/images/logo.jpg',
            height: 18.0,
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Sign in with Google",
              style: TextStyle(color: Colors.white),
            )),
      ],
    ),
    height: 43,
  );
}

Widget _forgetPassword(BuildContext context, ThemeData theme) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: GestureDetector(
      onTap: () => _resetPassword(context, theme),
      child: Container(
        alignment: Alignment.centerRight,
        width: 400,
        child: FadeAnimation(
            1.5,
            Text(
              "Forgot Password?",
              style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
            )),
      ),
    ),
  );
}

Widget _signUp(BuildContext context) {
  return FadeAnimation(
    1.5,
    RichText(
      text: TextSpan(
        text: "Don't have an account ? ",
        style: TextStyle(color: Colors.grey),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpScreenRoute);
              },
            text: "Register here",
            style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
          ),
        ],
      ),
    ),
  );
}

//Functions

Future<void> _resetPassword(BuildContext context, ThemeData theme) {
  final TextEditingController controller = TextEditingController();
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        content: SingleChildScrollView(
          child: Container(

            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 3,
                ),
                CustomTextField(
                  text: 'Enter registered Email',
                  theme: theme,
                  height: 55,
                  controller: controller,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                  text: 'Send reset email',
                  onTapMethod: () {},
                  height: 50,
                  width: 400,
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final ThemeData theme;
  final double width, height;
  final TextEditingController controller;
  final Icon icon;

  const CustomTextField({
    Key key,
    this.text,
    this.theme,
    this.width,
    this.height,
    this.controller,
    this.icon
  })  : assert(text != null, controller != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    print(EmailValidator.validate(controller.text));
    return FadeAnimation(
      1.5,
      Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10))
            ]),
        child: Container(
          padding: EdgeInsets.all(1.0),
          child: TextField(
            controller: controller,
            style: theme != null
                ? theme.textTheme.subhead
                : TextStyle(color: Colors.white),
            decoration: InputDecoration(
                icon: icon,
                border: InputBorder.none,
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
      ),
    );
  }
}

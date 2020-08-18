import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTapMethod;
  final Widget childWidget;
  final double width, height;

  const CustomButton(
      {Key key,
      this.text,
      this.onTapMethod,
      this.childWidget,
      this.width,
      this.height})
      : assert(onTapMethod != null, (text != null || childWidget != null)),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        1.5,
        GestureDetector(
          onTap: onTapMethod,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ])),
            child: childWidget ??
                Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
          ),
        ));
  }
}

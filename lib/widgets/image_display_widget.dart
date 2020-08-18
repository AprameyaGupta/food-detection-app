import 'package:flutter/material.dart';
import 'package:food_app/index.dart';

class ImageDisplay extends StatelessWidget {
  final double width, height, top, bottom, left, right;
  final double animationSpeed;
  final String assetName;

  const ImageDisplay(
      {Key key,
      this.width,
      this.height,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.animationSpeed,
      this.assetName})
      : assert(assetName != null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      width: width,
      height: height,
      top: top,
      bottom: bottom,
      child: FadeAnimation(
          animationSpeed ?? 1.5,
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(assetName))),
          )),
    );
  }
}

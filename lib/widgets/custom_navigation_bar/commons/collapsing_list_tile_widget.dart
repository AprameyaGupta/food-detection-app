import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final Icon icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;
  final CircleAvatar logo;

  CollapsingListTile(
      {@required this.title,
      @required this.animationController,
      this.icon,
      this.isSelected = true,
      this.onTap,
      this.logo});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation;
  Animation<double> sizedBoxAnimation;
  double maxWidth = 270;
  double minWidth = 70;
  @override
  void initState() {
    super.initState();
    widthAnimation = Tween<double>(begin: minWidth, end: maxWidth)
        .animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 0, end: 10).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.isSelected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            widget.icon != null
                ? Icon(
                    widget.icon.icon,
                    color: widget.isSelected
                        ? theme.selectedRowColor
                        : Colors.white30,
                    size: 38.0,
                  )
                : widget.logo,
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 190)
                ? Flexible(
                    child: Container(
                      child: Text(
                        widget.title,
                        style: widget.isSelected
                            ? theme.primaryTextTheme.title
                            : theme.textTheme.title,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

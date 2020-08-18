import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 270;
  double minWidth = 70;
  int currentSelectedIndex = 0;
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  String username = "Aprameya Gupta strgdyudjkf";

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: minWidth, end: maxWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, widget) => getWidget(context, widget),
        ),
        Expanded(child: navigationItems[currentSelectedIndex].child)
      ],
    );
  }

  Widget getWidget(context, widget) {
    final ThemeData theme = Theme.of(context);
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: theme.bottomAppBarTheme.color,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CollapsingListTile(
                title: username,
                logo: CircleAvatar(
                  child: Text(username[0]),
                  radius: 18.0,
                ),
                animationController: _animationController,
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 10.0,
            ),
            Expanded(flex: 2,
                          child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 12.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CollapsingListTile(
                title: 'Logout',
                icon: Icon(
                  Icons.exit_to_app,
                  size: 30,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                animationController: _animationController,
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon:AnimatedIcons.close_menu,
                progress: _animationController,
                color: theme.selectedRowColor,
                size: 50.0,
              )
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}

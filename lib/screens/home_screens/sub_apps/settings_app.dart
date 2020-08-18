import 'package:flutter/material.dart';

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: <Widget>[
              Container(
                color: Colors.black38,
                height: 100,
                child: Center(
                    child: Text(
                  'Settings',
                  textScaleFactor: 2,
                )),
              ),
              SizedBox(
                height: 10,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                      radius: 50,
                    ),
                    title: Text('Aprameya Gupta'),
                    subtitle: Text('aprameyagupta27@gmail.com'),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

final settingsApp = SettingsApp();

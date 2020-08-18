import 'package:flutter/material.dart';

class FavoritesApp extends StatelessWidget {
  Widget _listViewBuilder() {
    return Center(child: Text('Save your favourite dishes here!!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                      height: 100,
                      color: Colors.amber[100],
                      child: Center(
                        child: Text(
                          'Favorites',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  _listViewBuilder()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final favoritesApp = FavoritesApp();

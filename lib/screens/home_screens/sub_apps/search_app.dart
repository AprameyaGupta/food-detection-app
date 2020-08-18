import 'package:flutter/material.dart';

class SearchApp extends StatelessWidget{
  TextEditingController _searchController = TextEditingController();

  Widget _listViewBuilder() {
    return Text('Start exploring things!!');
  }

  @override
  Widget build(BuildContext context) {
    // double dheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Container(
                  width: 350,
                  height: 70,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.amber,
                        ),
                        border: InputBorder.none,
                        labelText: "Search",
                        labelStyle: TextStyle(color: Colors.grey[400])),
                    controller: _searchController,
                  ),
                ),
                Divider(),
                _listViewBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final searchApp = SearchApp();

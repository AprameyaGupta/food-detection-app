import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashBoardApp extends StatelessWidget {
  final Map<String, double> m = {
    "samosa": 150,
    "momo": 200,
    "pizza": 500,
    "roti": 50,
    "dal": 80
  };
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
                    height: 100.0,
                    color: Colors.amber[100],
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/app_icon.png'))),
                      ),
                    ),
                  ),
                  _calorieMeter(context),
                  Divider()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchField(TextEditingController controller) {
    return Container(
      width: 300,
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
        controller: controller,
      ),
    );
  }

  Widget _calorieMeterGauge(TextEditingController controller) {
    return Container(
        child: SfRadialGauge(
      enableLoadingAnimation: true,
      animationDuration: 4500,
      axes: <RadialAxis>[
        RadialAxis(
          radiusFactor: 0.7,
          minimum: 0,
          maximum: 1000,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 1000,
                gradient: SweepGradient(colors: [Colors.green, Colors.red]))
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              gradient: LinearGradient(colors: [Colors.green, Colors.red]),
              value: m.containsKey(controller.text.toLowerCase())
                  ? m[controller.text]
                  : 0.1,
              needleEndWidth: 5.0,
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text(
                        m.containsKey(controller.text.toLowerCase())
                            ? '${m[controller.text]}\n${controller.text}'
                            : '0',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                angle: 90,
                positionFactor: 0.5)
          ],
        ),
      ],
    ));
  }

  Widget _calorieMeter(BuildContext context) {
    final dwidth = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 8.0, top: 10.0),
            child: Text(
              'Calorie Meter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          dwidth > 600
              ? Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _searchField(controller),
                    )),
                    Expanded(child: _calorieMeterGauge(controller))
                  ],
                )
              : Column(
                  children: <Widget>[
                    _searchField(controller),
                    _calorieMeterGauge(controller)
                  ],
                ),
        ],
      ),
    );
  }
}

final dashBoardApp = DashBoardApp();

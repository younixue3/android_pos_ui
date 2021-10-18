import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'chart/line_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 220,
          decoration: BoxDecoration(color: Colors.indigo),
        ),
        SafeArea(
          child: Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Ricko Tiaka",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Card(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    elevation: 4,
                    child: LineChartHome(),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

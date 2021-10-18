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
          Container(
            padding: EdgeInsets.only(right: 20, left: 10),
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu, color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/public/57774948_2440392989306240_790466375524024320_n.jpg'))),
                )
              ],
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
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.right,
                ),
                Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.indigoAccent,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Wrap(
                            spacing: 15,
                            children: [
                              IconButton(
                                splashColor: Colors.indigo,
                                splashRadius: 32,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.stacked_line_chart,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              IconButton(
                                splashColor: Colors.indigo,
                                splashRadius: 32,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu_book,
                                  color: Colors.white38,
                                  size: 28,
                                ),
                              ),
                              IconButton(
                                splashColor: Colors.indigo,
                                splashRadius: 32,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.food_bank,
                                  color: Colors.white38,
                                  size: 28,
                                ),
                              ),
                              IconButton(
                                splashColor: Colors.indigo,
                                splashRadius: 32,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.stacked_line_chart,
                                  color: Colors.white38,
                                  size: 28,
                                ),
                              ),
                              IconButton(
                                splashColor: Colors.indigo,
                                splashRadius: 32,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.stacked_line_chart,
                                  color: Colors.white38,
                                  size: 28,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: GridView.count(
                        crossAxisCount: 2,
                        children: [
                          Container(
                            child: Card(
                              child: Text('data'),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 10),
                //   child: SizedBox(
                //     width: double.infinity,
                //     height: 180,
                //     child: Card(
                //       color: Color.fromRGBO(234, 234, 234, 1),
                //       elevation: 4,
                //       child: LineChartHome(),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

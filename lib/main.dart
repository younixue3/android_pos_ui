import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'chart/line_chart_one.dart';
import 'chart/line_chart_two.dart';

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
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(255, 228, 238, 255)),
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu,
                              color: Color.fromARGB(255, 228, 238, 255)),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Hi, Ricko Tiaka",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 120),
                              color: Color.fromARGB(255, 228, 238, 255),
                              height: 40,
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    color: Colors.blueAccent,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Wrap(
                                        spacing: 15,
                                        children: [
                                          IconButton(
                                            splashColor: Colors.white54,
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
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // flexibleSpace:
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              options: CarouselOptions(
                reverse: false,
                enableInfiniteScroll: false,
                aspectRatio: 0.3,
                pageViewKey: PageStorageKey<String>('carousel_slider'),
              ),
              items: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: 500,
                          height: 150,
                          padding: EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.indigo,
                                  Colors.blue,
                                ]),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Outlet Balikpapan Baru',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1.544.600',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        width: 500,
                        margin: EdgeInsets.only(top: 10),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text('Outlet Balikpapan Baru',
                                style: TextStyle(fontSize: 25)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: 500,
                          height: 150,
                          padding: EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.green,
                                  Colors.yellow,
                                ]),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Outlet Balikpapan Baru',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1.544.600',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        width: 500,
                        margin: EdgeInsets.only(top: 10),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text('Outlet Balikpapan Baru',
                                style: TextStyle(fontSize: 25)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

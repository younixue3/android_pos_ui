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
                              color: Color.fromARGB(250, 250, 250, 250),
                              height: 40,
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    color: Colors.indigoAccent,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                enlargeCenterPage: true,
                aspectRatio: 0.5,
                pageViewKey: PageStorageKey<String>('carousel_slider'),
              ),
              items: [
                Column(
                  children: [
                    Card(
                      child: LineChartHomeOne(),
                    ),
                    Container(
                      height: 500,
                      color: Colors.red,
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: LineChartHomeTwo(),
                    ),
                    Container(
                      height: 500,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
    // body: Stack(
    //   children: [
    //     Container(
    //       height: 220,
    //       decoration: BoxDecoration(color: Colors.indigo),
    //     ),
    //     Container(
    //       padding: EdgeInsets.only(right: 20, left: 10),
    //       margin: EdgeInsets.only(top: 20),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           IconButton(
    //             onPressed: () {},
    //             icon: Icon(Icons.menu, color: Colors.white),
    //           ),
    //           Container(
    //             height: 40,
    //             width: 40,
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 image: DecorationImage(
    //                     fit: BoxFit.cover,
    //                     image: AssetImage(
    //                         'assets/public/57774948_2440392989306240_790466375524024320_n.jpg'))),
    //           )
    //         ],
    //       ),
    //     ),
    //     Container(
    //       padding: EdgeInsets.symmetric(horizontal: 20),
    //       margin: EdgeInsets.only(top: 70),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             "Hi, Ricko Tiaka",
    //             style: TextStyle(
    //               fontSize: 25,
    //               color: Colors.white,
    //               fontWeight: FontWeight.w300,
    //             ),
    //             textAlign: TextAlign.right,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(top: 90),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Card(
    //                   color: Colors.indigoAccent,
    //                   child: Container(
    //                     padding: EdgeInsets.symmetric(horizontal: 10),
    //                     child: Wrap(
    //                       spacing: 15,
    //                       children: [
    //                         IconButton(
    //                           splashColor: Colors.indigo,
    //                           splashRadius: 32,
    //                           onPressed: () {},
    //                           icon: Icon(
    //                             Icons.stacked_line_chart,
    //                             color: Colors.white,
    //                             size: 28,
    //                           ),
    //                         ),
    //                         IconButton(
    //                           splashColor: Colors.indigo,
    //                           splashRadius: 32,
    //                           onPressed: () {},
    //                           icon: Icon(
    //                             Icons.menu_book,
    //                             color: Colors.white38,
    //                             size: 28,
    //                           ),
    //                         ),
    //                         IconButton(
    //                           splashColor: Colors.indigo,
    //                           splashRadius: 32,
    //                           onPressed: () {},
    //                           icon: Icon(
    //                             Icons.food_bank,
    //                             color: Colors.white38,
    //                             size: 28,
    //                           ),
    //                         ),
    //                         IconButton(
    //                           splashColor: Colors.indigo,
    //                           splashRadius: 32,
    //                           onPressed: () {},
    //                           icon: Icon(
    //                             Icons.stacked_line_chart,
    //                             color: Colors.white38,
    //                             size: 28,
    //                           ),
    //                         ),
    //                         IconButton(
    //                           splashColor: Colors.indigo,
    //                           splashRadius: 32,
    //                           onPressed: () {},
    //                           icon: Icon(
    //                             Icons.stacked_line_chart,
    //                             color: Colors.white38,
    //                             size: 28,
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           CarouselSlider(
    //             options: CarouselOptions(
    //               height: 500,
    //               reverse: false,
    //               enableInfiniteScroll: false,
    //               enlargeCenterPage: true,
    //               // aspectRatio: 2.0,
    //               pageViewKey: PageStorageKey<String>('carousel_slider'),
    //             ),
    //             items: [
    //               Column(
    //                 children: [
    //                   Card(
    //                     child: LineChartHomeOne(),
    //                   ),
    //                   Container(
    //                     height: 200,
    //                     color: Colors.red,
    //                   )
    //                 ],
    //               ),
    //               Column(
    //                 children: [
    //                   Card(
    //                     child: LineChartHomeTwo(),
    //                   ),
    //                   Container(
    //                     height: 200,
    //                     color: Colors.red,
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           // Expanded(
    //           //   child: GridView.count(
    //           //     crossAxisCount: 2,
    //           //     children: [
    //           //       Card(
    //           //         child: Text('data'),
    //           //       ),
    //           //     ],
    //           //   ),
    //           // )
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
  }
}

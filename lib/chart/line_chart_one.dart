import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartHomeOne extends StatefulWidget {
  const LineChartHomeOne({Key? key}) : super(key: key);

  @override
  _LineChartHomeOneState createState() => _LineChartHomeOneState();
}

class _LineChartHomeOneState extends State<LineChartHomeOne> {
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 30),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 15,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Su';
              case 2:
                return 'Mo';
              case 3:
                return 'Tu';
              case 4:
                return 'We';
              case 5:
                return 'Th';
              case 6:
                return 'Sr';
              case 7:
                return 'Fa';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          reservedSize: 32,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 0.3)),
      minX: 1,
      maxX: 7,
      minY: 0,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(1, 3),
            FlSpot(2, 4),
            FlSpot(3, 5),
            FlSpot(4, 3.1),
            FlSpot(5, 4),
            FlSpot(6, 3),
            FlSpot(7, 4),
          ],
          colors: [Colors.white],
          barWidth: 1,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [Colors.indigo.withOpacity(0.7)],
          ),
        ),
      ],
    );
  }
}

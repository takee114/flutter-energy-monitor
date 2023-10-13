import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'line_chart_titles.dart';

class LineChartWidget extends StatefulWidget {
  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  final List<FlSpot> solarData = [
    FlSpot(0, 30),
    FlSpot(3, 20),
    FlSpot(6, 25),
    FlSpot(9, 13),
    FlSpot(12, 3),
    FlSpot(15, 9),
    FlSpot(18, 31),
    FlSpot(21, 50),
    FlSpot(23, 10),
  ];

  @override
  Widget build(BuildContext context) {
    double interval;
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
          margin: EdgeInsets.fromLTRB(15, 20, 10, 20),
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                interval = 1;
              } else {
                interval = 2;
              }

              return LineChart(
                LineChartData(
                    minX: 0,
                    maxX: 23,
                    minY: 0,
                    maxY: 100,
                    gridData: FlGridData(
                      show: true,
                      // getDrawingHorizontalLine:(value) {
                      //   return FlLine(strokeWidth: 2);
                      // },
                    ),
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles:
                            SideTitles(showTitles: true, reservedSize: 34),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: LineTitles.getTitleData,
                            reservedSize: 18,
                            interval: interval),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      // all(color: const Color(0xff37434d), width: 1),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                          color: Color.fromARGB(247, 140, 17, 17),
                          spots: solarData,
                          isCurved: true,
                          dotData: FlDotData(show: false),
                          barWidth: 3,
                          belowBarData: BarAreaData(
                            show: true,
                          )),
                    ]),
              );
            },
          )),
    );
  }
}

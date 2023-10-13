import "package:fl_chart/fl_chart.dart";
import 'package:flutter/material.dart';

class IndividualBar {
  int x;
  double y;
  IndividualBar({required this.x, required this.y});

  BarChartGroupData barChartGroupData() {
    return BarChartGroupData(
      x: this.x,
      barRods: [
        BarChartRodData(
            toY: this.y,
            width: 18,
            borderRadius: BorderRadius.zero,
            color: Color.fromARGB(243, 81, 10, 87)),
      ],
    );
  }
}

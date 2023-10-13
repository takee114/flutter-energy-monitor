import 'package:EnergyMonitor/src/widgets/bar_chart/get_days.dart';
import 'package:EnergyMonitor/src/widgets/bar_chart/get_months.dart';
import 'package:EnergyMonitor/src/widgets/bar_chart/weekly_bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'individual_bar.dart';
import 'monthly_bar_data.dart';

class BuildingUsageGraph extends StatefulWidget {
  final String selectedRange;
  BuildingUsageGraph(
    this.selectedRange, {
    super.key,
  });

  @override
  State<BuildingUsageGraph> createState() => _BuildingUsageGraphState();
}

class _BuildingUsageGraphState extends State<BuildingUsageGraph> {
  @override
  Widget build(BuildContext context) {
    List<BarChartGroupData> barData = getBarData(widget.selectedRange);
    bool isDaily = widget.selectedRange.contains("this week");
    return OrientationBuilder(
      builder: (context, orientation) => AspectRatio(
        aspectRatio: orientation == Orientation.portrait ? 4 / 3 : 3 / 2,
        child: BarChart(
          BarChartData(
            maxY: 20,
            minY: 5,
            barGroups: barData,
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: isDaily ? getDays : getMonths,
              )),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            backgroundColor: Color.fromARGB(12, 0, 128, 128),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getBarData(String range) {
    MonthlyBarData mbd = new MonthlyBarData();
    WeeklyBarData wbd = new WeeklyBarData();
    if (widget.selectedRange.contains("monthly")) {
      mbd.initializerBarData();
    } else {
      wbd.initializerBarData();
    }
    List<IndividualBar> monthlyBarData = [
      IndividualBar(x: 0, y: 9),
      IndividualBar(x: 1, y: 15),
      IndividualBar(x: 2, y: 12),
      IndividualBar(x: 3, y: 10),
      IndividualBar(x: 4, y: 15),
      IndividualBar(x: 5, y: 13),
      IndividualBar(x: 6, y: 11),
      IndividualBar(x: 7, y: 15),
      IndividualBar(x: 8, y: 12),
      IndividualBar(x: 9, y: 10),
      IndividualBar(x: 10, y: 15),
      IndividualBar(x: 11, y: 13),
    ];
    List<IndividualBar> dailyBarData = [
      IndividualBar(x: 0, y: 8),
      IndividualBar(x: 1, y: 15),
      IndividualBar(x: 2, y: 12),
      IndividualBar(x: 3, y: 10),
      IndividualBar(x: 4, y: 15),
      IndividualBar(x: 5, y: 13),
      IndividualBar(x: 6, y: 11),
    ];
    List<BarChartGroupData> dailyGroupData = dailyBarData.map((dailyBarData) {
      return dailyBarData.barChartGroupData();
    }).toList();

    List<BarChartGroupData> monthlyGroupData =
        monthlyBarData.map((dailyBarData) {
      return dailyBarData.barChartGroupData();
    }).toList();

    if (range.contains("monthly")) {
      return monthlyGroupData;
    } else {
      return dailyGroupData;
    }
  }
}

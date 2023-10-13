import 'package:EnergyMonitor/src/widgets/bar_chart/individual_bar.dart';

class WeeklyBarData {
  double? sunUsage;
  double? monUsage;
  double? tueUsage;
  double? wedUsage;
  double? thuUsage;
  double? friUsage;
  double? satUsage;

  WeeklyBarData({
    this.sunUsage,
    this.monUsage,
    this.tueUsage,
    this.wedUsage,
    this.thuUsage,
    this.friUsage,
    this.satUsage,
  });

  List<IndividualBar> weeklyBarData = [];

  void initializerBarData() {
    weeklyBarData = [
      IndividualBar(x: 0, y: sunUsage ?? 0.0),
      IndividualBar(x: 1, y: monUsage ?? 0.0),
      IndividualBar(x: 2, y: tueUsage ?? 0.0),
      IndividualBar(x: 3, y: wedUsage ?? 0.0),
      IndividualBar(x: 4, y: thuUsage ?? 0.0),
      IndividualBar(x: 5, y: friUsage ?? 0.0),
      IndividualBar(x: 6, y: satUsage ?? 0.0),
    ];
  }
}

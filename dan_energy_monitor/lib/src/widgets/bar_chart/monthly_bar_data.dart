import 'individual_bar.dart';

class MonthlyBarData {
  double? janUsage;
  double? febUsage;
  double? marUsage;
  double? aprUsage;
  double? mayUsage;
  double? junUsage;
  double? julUsage;
  double? augUsage;
  double? septUsage;
  double? octUsage;
  double? novUsage;
  double? decUsage;

  MonthlyBarData({
    this.janUsage,
    this.febUsage,
    this.marUsage,
    this.aprUsage,
    this.mayUsage,
    this.junUsage,
    this.julUsage,
    this.augUsage,
    this.septUsage,
    this.octUsage,
    this.novUsage,
    this.decUsage,
  });

  List<IndividualBar> monthlyBarData = [];

  void initializerBarData() {
    monthlyBarData = [
      IndividualBar(x: 0, y: janUsage ?? 0.0),
      IndividualBar(x: 1, y: febUsage ?? 0.0),
      IndividualBar(x: 2, y: marUsage ?? 0.0),
      IndividualBar(x: 3, y: aprUsage ?? 0.0),
      IndividualBar(x: 4, y: mayUsage ?? 0.0),
      IndividualBar(x: 5, y: junUsage ?? 0.0),
      IndividualBar(x: 6, y: julUsage ?? 0.0),
      IndividualBar(x: 7, y: augUsage ?? 0.0),
      IndividualBar(x: 8, y: septUsage ?? 0.0),
      IndividualBar(x: 9, y: octUsage ?? 0.0),
      IndividualBar(x: 10, y: novUsage ?? 0.0),
      IndividualBar(x: 11, y: decUsage ?? 0.0),
    ];
  }
}

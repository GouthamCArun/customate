import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  int sale;
  String p_name;
  final charts.Color color;

  BarChartModel({
    required this.sale,
    required this.p_name,
    required this.color,
  });
}

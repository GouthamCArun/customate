import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import 'bar_chart.dart';
import 'bar_chart.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
      p_name: "Saree",
      sale: 20,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      p_name: "Jacket",
      sale: 8,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      p_name: "Kurtha",
      sale: 14,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      p_name: "Shirt",
      sale: 12,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      p_name: "frok",
      sale: 5,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      p_name: "Langha",
      sale: 1,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    //   BarChartModel(
    //     year: "2020",
    //     financial: 400,
    //     color: charts.ColorUtil.fromDartColor(Colors.purple),
    //   ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.p_name,
        measureFn: (BarChartModel series, _) => series.sale,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Container(
      height: 400,
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 50),
      child: charts.BarChart(
        // vertical: false,
        series,
        animate: true,
      ),
    );
  }
}

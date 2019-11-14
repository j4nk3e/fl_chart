import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScatterChartSample1State();
}

class _ScatterChartSample1State extends State {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.black.withOpacity(0.2),
        child: ScatterChart(
          ScatterChartData(
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 10,
              borderData: FlBorderData(
                show: false,
              ),
              gridData: FlGridData(
                show: true,
                drawHorizontalGrid: false,
                checkToShowHorizontalGrid: (value) => true,
                getDrawingHorizontalGridLine: (value) => FlLine(color: Colors.green),
                drawVerticalGrid: true,
                checkToShowVerticalGrid: (value) => true,
                getDrawingVerticalGridLine: (value) => FlLine(color: Colors.green),
                verticalInterval: 1,
              ),
              titlesData: const FlTitlesData(
                show: false,
              )),
        ),
      ),
    );
  }
}

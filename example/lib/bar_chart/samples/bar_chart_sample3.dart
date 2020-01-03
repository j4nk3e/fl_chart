import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0xff2c4260),
        child: BarChart(
          VerticalBarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxValue: 20,
              barTouchData: BarTouchData(
                enabled: false,
                touchTooltipData: BarTouchTooltipData(
                  tooltipBgColor: Colors.transparent,
                  tooltipPadding: const EdgeInsets.all(0),
                  tooltipBottomMargin: 8,
                  getTooltipItem: (
                    BarChartGroupData group,
                    int groupIndex,
                    BarChartRodData rod,
                    int rodIndex,
                  ) {
                    return BarTooltipItem(
                      rod.value.round().toString(),
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  textStyle: TextStyle(
                      color: const Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 14),
                  margin: 20,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Mn';
                      case 1:
                        return 'Te';
                      case 2:
                        return 'Wd';
                      case 3:
                        return 'Tu';
                      case 4:
                        return 'Fr';
                      case 5:
                        return 'St';
                      case 6:
                        return 'Sn';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: const SideTitles(showTitles: false),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: [
                BarChartGroupData(
                    value: 0,
                    barRods: [BarChartRodData(value: 8, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
                BarChartGroupData(
                    value: 1,
                    barRods: [BarChartRodData(value: 10, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
                BarChartGroupData(
                    value: 2,
                    barRods: [BarChartRodData(value: 14, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
                BarChartGroupData(
                    value: 3,
                    barRods: [BarChartRodData(value: 15, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
                BarChartGroupData(
                    value: 3,
                    barRods: [BarChartRodData(value: 13, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
                BarChartGroupData(
                    value: 3,
                    barRods: [BarChartRodData(value: 10, color: Colors.lightBlueAccent)],
                    showingTooltipIndicators: [0]),
              ]),
        ),
      ),
    );
  }
}

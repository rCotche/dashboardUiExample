import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../const/constant.dart';
import '../data/pie_chart_data.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();

    return SizedBox(
      height: 200,
      //stack permet de superposer des widgets
      child: Stack(
        children: [
          //fl_chart
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              //access tge data
              sections: pieChartData.paiChartSelectionDatas,
            ),
          ),
          //
          //à l'interieur du pie chart
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                const SizedBox(height: 8),
                const Text("of 100%")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

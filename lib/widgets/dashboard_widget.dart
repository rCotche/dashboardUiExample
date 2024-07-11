import 'package:flutter/material.dart';

import 'activity_details_card.dart';
import 'bar_graph_widget.dart';
import 'header_widget.dart';
import 'line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          //
          //HeaderWidget(),
          SizedBox(
            height: 18,
          ),
          //
          ActivityDetailsCard(),
          SizedBox(
            height: 18,
          ),
          //
          LineChartCard(),
          SizedBox(
            height: 18,
          ),
          //
          BarGraphCard(),
          SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}

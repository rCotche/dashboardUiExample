import 'package:dashboard_ui_example/util/responsive.dart';
import 'package:dashboard_ui_example/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

import 'activity_details_card.dart';
import 'bar_graph_widget.dart';
import 'header_widget.dart';
import 'line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            //
            const HeaderWidget(),
            const SizedBox(
              height: 18,
            ),
            //
            const ActivityDetailsCard(),
            const SizedBox(
              height: 18,
            ),
            //
            const LineChartCard(),
            const SizedBox(
              height: 18,
            ),
            //
            const BarGraphCard(),
            const SizedBox(
              height: 18,
            ),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'pie_chart_widget.dart';
import 'scheduled_widget.dart';
import 'summary_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Chart(),
            Text(
              'Summary',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: SummaryDetails(),
            ),
            SizedBox(
              height: 40,
            ),
            Scheduled(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

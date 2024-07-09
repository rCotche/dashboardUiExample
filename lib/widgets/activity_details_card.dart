import 'package:dashboard_ui_example/data/health_details.dart';
import 'package:flutter/material.dart';

import 'custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetail = HealthDetails();
    return GridView.builder(
        itemCount: healthDetail.haelthData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) => const CustomCard());
  }
}

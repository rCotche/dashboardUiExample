import 'package:dashboard_ui_example/data/health_details.dart';
import 'package:flutter/material.dart';

import 'custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetail = HealthDetails();
    return GridView.builder(
      itemCount: healthDetail.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            Image.asset(
              healthDetail.healthData[index].icon,
              width: 30,
              height: 30,
            ),
            //
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                bottom: 4,
              ),
              child: Text(
                healthDetail.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            //
            Text(
              healthDetail.healthData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'pie_chart_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Chart(),
        ],
      ),
    );
  }
}

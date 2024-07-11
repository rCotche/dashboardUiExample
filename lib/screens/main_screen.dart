import 'package:dashboard_ui_example/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              // 2/12
              //*100
              //16%
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
            ),
            const Expanded(
              // 7/12
              //*100
              //58%
              flex: 7,
              child: DashboardWidget(),
            ),
            Expanded(
              // 3/12
              //*100
              //25%
              flex: 3,
              child: SummaryWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

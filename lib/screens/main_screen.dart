import 'package:dashboard_ui_example/util/responsive.dart';
import 'package:dashboard_ui_example/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_widget.dart';
import '../widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      //si c'est pas un desktop
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          //sinon c'est un desktop
          : null,
      //si c'est un mobile
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          //sinon
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
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
            if (isDesktop)
              const Expanded(
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

import 'package:dashboard_ui_example/const/constant.dart';
import 'package:dashboard_ui_example/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 20,
      ),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => builMenuEntry(data, index),
      ),
    );
  }

  ///decoration de la side bar
  Widget builMenuEntry(SideMenuData data, int index) {
    //declare bool
    final isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        //
        color: isSelected ? selectionColor : Colors.transparent,
      ),
      child: InkWell(
        //au moment où on tap sur le menu la valeur selectedIndex est mis à jour
        onTap: () => setState(() {
          //selectedIndex prend la valeur de l'index
          //this. item a ete tap
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 7,
              ),
              child: Icon(
                data.menu[index].icon,
                //selon si c'est le menu selected on change la couleur
                //ternaire si vrai black sinon grey
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                //
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                fontSize: 16,
                //
                color: isSelected ? Colors.black : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

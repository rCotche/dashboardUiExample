import 'package:dashboard_ui_example/const/constant.dart';
import 'package:dashboard_ui_example/util/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //si c'est pas un desktop
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              //Permet d'ouvrir la sidebar lorsqu'on clique sur l'icon
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ),
          ),
        //si c'est pas un mobile
        if (!Responsive.isMobile(context))
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBackgroundColor,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 21,
                ),
              ),
            ),
          ),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                ),
                onPressed: () {},
              ),
              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    //"assets/images/avatar.png",
                    "assets/images/papier.png",
                    width: 32,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

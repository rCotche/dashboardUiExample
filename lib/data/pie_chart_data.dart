import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../const/constant.dart';

class ChartData {
  final paiChartSelectionDatas = [
    //vient de fl_chart
    //chaque part de la pie
    PieChartSectionData(
      color: primaryColor,
      //It determines how much space it should occupy around the circle.
      //cb est la part, càd 25% du pie
      value: 25,
      showTitle: false,
      //Defines the radius of section.
      //"la largeur" du cercle,
      //càd le cercle est fin si le nb est petit & vice versa
      radius: 25,
    ),
    //
    PieChartSectionData(
      color: const Color(0xFF26E5FF),
      value: 20,
      showTitle: false,
      radius: 22,
    ),
    //
    PieChartSectionData(
      color: const Color(0xFFFFCF26),
      value: 10,
      showTitle: false,
      radius: 19,
    ),
    //
    PieChartSectionData(
      color: const Color(0xFFEE2727),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    //
    PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ];
}

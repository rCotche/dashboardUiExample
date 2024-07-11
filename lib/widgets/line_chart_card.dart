import 'package:dashboard_ui_example/const/constant.dart';
import 'package:dashboard_ui_example/data/line_chart_data.dart';
import 'package:dashboard_ui_example/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Creates a widget with a specific aspect ratio.
          AspectRatio(
            //width/height
            aspectRatio: 16 / 6,
            //LineChart : vient du package fl_chart
            child: LineChart(
              //vient du package fl_chart
              LineChartData(
                lineTouchData: const LineTouchData(
                  //permet que le graph est interactif
                  handleBuiltInTouches: true,
                ),
                //vient du package fl_chart
                gridData: const FlGridData(
                  //set to false
                  //pour ne pas avoir de grid derriere le graphique
                  show: false,
                ),
                //gere les titres sur le graphique
                titlesData: FlTitlesData(
                  //pas de titre
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  //pas de titre
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  //
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        //data : vient de notre class LineData
                        //bottomTitle est une propriete de la classe
                        //data.bottomTitle[value.toInt()] check si cette expression est null
                        return data.bottomTitle[value.toInt()] != null
                            //si c'est différent de null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            //si c'est null
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        //data : vient de notre class LineData
                        //leftTitle est une propriete de la classe
                        //data.leftTitle[value.toInt()] check si cette expression est null
                        return data.leftTitle[value.toInt()] != null
                            //si c'est différent de null
                            ? Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              )
                            //si c'est null
                            : const SizedBox();
                      },
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    //couleur de la ligne
                    color: selectionColor,
                    //largeur de la ligne
                    barWidth: 2.5,
                    //effet en dessous de la ligne
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        //
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent
                        ],
                      ),
                      show: true,
                    ),
                    //pas de point sur le grphique
                    dotData: const FlDotData(
                      show: false,
                    ),
                    spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dashboard_ui_example/models/health_model.dart';

class HealthDetails {
  final healthData = [
    //HealthModel(icon: 'assets/icons/burn.png', value: "305", title: "Calories burned"),
    HealthModel(
        icon: 'assets/icons/papier.png',
        value: "305",
        title: "Calories burned"),
    HealthModel(
        icon: 'assets/icons/papier.png', value: "10.983", title: "Steps"),
    HealthModel(
        icon: 'assets/icons/papier.png', value: "7 km", title: "Distance"),
    HealthModel(icon: 'assets/icons/papier.png', value: "7h48", title: "Sleep"),
  ];
}

import 'package:flutter/material.dart';
import 'package:shivam/app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = AppConfig(
      child: MyApp(), appTitle: "Flutter Flavors", buildFlavor: "Production");
}

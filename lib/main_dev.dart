import 'package:flutter/material.dart';
import 'package:shivam/app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: "Flutter Flavors Dev",
    buildFlavor: "Development",
    child: MyApp(),
  );
  return runApp(configuredApp);
}

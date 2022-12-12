import 'package:flutter/material.dart';
//import 'app_config.dart';
import 'package:meta/meta.dart';

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  @override
  final Widget child;

  AppConfig({
    Key? key,
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
  }) : super(child: child, key: key);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

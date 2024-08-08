import 'package:assessment_test/main.dart';
import 'package:assessment_test/presentation/main/main_page.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String homeRoute = "/";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    return switch (routeSettings.name) {
      RoutesManager.homeRoute => MaterialPageRoute(
          builder: (_) => const MainPage()),
      _ => unDefinedRoute()
    };
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("Route Not Found"),
              ),
              body: const Center(child: Text("Route Not Found")),
            ));
  }
}

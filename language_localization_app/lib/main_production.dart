import 'package:flutter/material.dart';
import 'package:language_localization_app/flavor_config.dart';
import 'package:language_localization_app/app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    color: Colors.green,
  );
  runApp(const MyApp());
}

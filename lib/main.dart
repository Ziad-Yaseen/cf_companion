import 'package:cf_companion/app.dart';
import 'package:cf_companion/core/di/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const Delta());
}

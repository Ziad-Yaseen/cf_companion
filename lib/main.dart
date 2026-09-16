import 'package:cf_companion/app.dart';
import 'package:cf_companion/core/network/dio_helper.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.initDio();
  runApp(const Delta());
}

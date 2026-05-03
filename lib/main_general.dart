import 'package:budget_sales/app/core/shared/helpers/analytics_engine.dart';
import 'package:budget_sales/app/core/shared/helpers/crashlytics_engine.dart';
import 'package:flutter/material.dart';

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AnalyticsEngine.init();
  await CrashlyticsEngine.init();
}

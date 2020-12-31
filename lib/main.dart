import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConst.APP_NAME,
      theme: AppTheme.lightThemeData,
      builder: ExtendedNavigator<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}

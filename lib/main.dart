import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  runApp(DropApp());
}

class DropApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData,
      title: StringConst.APP_NAME,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

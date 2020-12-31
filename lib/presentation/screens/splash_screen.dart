import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
//    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1500), () {
      ExtendedNavigator.root.pushAndRemoveUntil(
        Routes.authScreen,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

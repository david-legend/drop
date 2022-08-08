import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/drop_logo.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1000), () {
      AutoRouter.of(context).push(
        AuthScreenRoute(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: DropLogo(
          width: 200,
          height: 200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.RADIUS_20),
            bottomLeft: Radius.circular(Sizes.RADIUS_20),
            bottomRight: Radius.circular(Sizes.RADIUS_100),
            topRight: Radius.circular(Sizes.RADIUS_100),
          ),
        ),
      )),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/spaces.dart';
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
      ExtendedNavigator.root.pushAndRemoveUntil(
        Routes.authScreen,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Logo Goes Here",
              style: Theme.of(context).textTheme.headline5,
            ),
            SpaceH16(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              child: Center(
                  child: Placeholder(
                fallbackWidth: 150,
                fallbackHeight: 150,
              )),
            ),
          ],
        ),
      ),
    );
  }
}

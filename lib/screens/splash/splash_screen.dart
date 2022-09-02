
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes/app_route_names.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () {
        print("HHHHH::: $SplashScreen");
        Get.toNamed(loginScreen);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        gradient : LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(254,117,23, 1),Color.fromRGBO(255,92,42, 1)]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Image.asset(
              "assets/images/app_logo.png",
              alignment: Alignment.bottomCenter,
              scale: 1.2,
            ),
          ),
          Expanded(
            flex: 7,
            child: Transform.scale(
              alignment: Alignment.topCenter,
              scale: 1.20,
              child: Image.asset(
                "assets/images/app_logo_transparent.png",
                // scale: 1.0,
                // width: Get.width * 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*

AnimatedSplashScreen.withScreenFunction(
  splash: 'images/splash.png',
  screenFunction: () async{
    return MainScreen();
  },
  splashTransition: SplashTransition.rotationTransition,
  pageTransitionType: PageTransitionType.scale,
)

AnimatedSplashScreen(
  splash: Image.asset("assets/images/app_logo.png"),
  nextScreen: const LoginScreen(),
  splashTransition: SplashTransition.scaleTransition,
  backgroundColor: const Color.fromRGBO(254,117,23, 1),
  splashIconSize: 150.0,
  animationDuration: const Duration(seconds: 1),
  duration: 50000,
),






* */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/screens/home/home_screen.dart';
import 'package:talk_deals/screens/others/question_screen.dart';
import 'package:talk_deals/screens/profile/profile_screen.dart';

import '../../screens/dashboard_screen.dart';
import 'app_route_names.dart';
import '../../screens/bidding/bidding_screen.dart';
import '../../screens/cart/cart_screen.dart';
import '../../screens/cart/shipping_address_screen.dart';
import '../../screens/splash/splash_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/signup_screen.dart';

List<GetPage<dynamic>> getPages = [
  /*
  * Walk-Through Screens.
  */
  GetPage(name: splashScreen, page: () => const SplashScreen()),


  /*
  * Auth Screens.
  */
  GetPage(
    name: loginScreen,
    page: () => LoginScreen(),
    transition: Transition.circularReveal,
    transitionDuration:  Duration(seconds: 3),
    curve: Curves.easeIn,
  ),
  GetPage(
    name: signUpScreen,
    page: () => SignUpScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 350),
    curve: Curves.easeIn,
  ),

  /*
  * Dashboard Screens.
  */
  GetPage(
    name: dashboardScreen,
    page: () => DashboardScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),


  /*
  * Home Screens.
  */
  GetPage(name: homeScreen, page: () => HomeScreen(),),


  /*
  * Bidding Screens.
  */
  GetPage(
    name: biddingScreen,
    page: () => BiddingScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),


  /*
  * Cart Screens.
  */
  GetPage(
    name: cartScreen,
    page: () => CartScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),
  GetPage(
    name: shippingAddressScreen,
    page: () => ShippingAddressScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),


  /*
  * Profile Screens.
  */
  GetPage(
    name: profileScreen,
    page: () => ProfileScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),


  /*
  * Others Screens.
  */
  GetPage(
    name: questionScreen,
    page: () => QuestionScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),
];
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/screens/help/talk_deal_guide/talk_deal_guide_screen.dart';
import 'package:talk_deals/screens/help/tips_and_tricks/tips_and_tricks_screen.dart';

import '../../screens/auction/auction_screen.dart';
import '../../screens/auction/success_auction.dart';
import '../../screens/dashboard_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/home/winners_screen.dart';
import '../../screens/help/help_screen.dart';
import '../../screens/profile/Activities/activities_screen.dart';
import '../../screens/profile/Edit profile/edit_profile_screen.dart';
import '../../screens/profile/Settings/settings_screen.dart';
import '../../screens/profile/Wallet/fund_wallet_screen.dart';
import '../../screens/profile/Wallet/wallet_screen.dart';
import '../../screens/profile/profile_screen.dart';
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
  * Auction Screens.
  */
  GetPage(
    name: editAuction,
    page: () => AuctionScreen(),
    transition: Transition.rightToLeft,
    transitionDuration:  Duration(milliseconds: 350),
    curve: Curves.easeIn,
  ),
  GetPage(
    name: successAuction,
    page: () => SuccessAuction(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 350),
    curve: Curves.easeIn,
  ),


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
  * Edit Profile Screen.
  */
  GetPage(
    name: editProfileScreen,
    page: () => EditProfileScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),

  /*
  * Wallet/Fund Wallet Screen.
  */
  GetPage(
    name: walletScreen,
    page: () => WalletScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),
  GetPage(
    name: fundWalletScreen,
    page: () => FundWalletScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),

  /*
  * Activities Screen.
  */
  GetPage(
    name: activitiesScreen,
    page: () => ActivitiesScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),

  /*
  * Settings Screen.
  */
  GetPage(
    name: settingsScreen,
    page: () => SettingsScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),


  /*
  * Others Screens.
  */
  GetPage(
    name: helpScreen,
    page: () => HelpScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),

  /*
  * Others Screens.
  */
  GetPage(
    name: talkDealGuideScreen,
    page: () => TalkDealGuideScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),

  /*
  * Others Screens.
  */
  GetPage(
    name: tipsAndTricksScreen,
    page: () => TipsAndTricksScreen(),
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),



  /*
  * Winner Screens.
  */
  GetPage(
    name: winnerScreen,
    page: () => WinnersScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 700),
    curve: Curves.easeIn,
  ),
];
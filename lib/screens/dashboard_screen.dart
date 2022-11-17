import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../routes/app_routes/app_route_names.dart';
import 'cart/cart_screen.dart';
import 'help/help_screen.dart';
import 'profile/profile_screen.dart';
import './home/home_screen.dart';
import '../states/dashboard_state_controller.dart';
import '../widgets/app_snackBar_widget.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final DashboardStateController _dashboardStateController = Get.put(DashboardStateController());
  final AppSnackBar _appSnackBar = AppSnackBar();

  final List<Widget> dashboardWidgetScreensList = [
    HomeScreen(),
    CartScreen(),
    HelpScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardStateController>(builder: (controller) {
      return Scaffold(

        //  Body.
        body: DoubleBackToCloseApp(
          snackBar: _appSnackBar.snackBar('Tap back again to exit the app.', 'Info'),
          child: dashboardWidgetScreensList[controller.selectedBottomNavigationBarIndex],
        ),

        //  Bottom Navigation Bar.
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: SizedBox(
            height: 57.0,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //  Home
                TextButton(
                  onPressed: () {
                    controller.updateSelectedBottomNavigationBarIndex(0);
                  },
                  child: Icon(
                    Iconsax.home,
                    color: (controller.selectedBottomNavigationBarIndex == 0) ?
                    Color(0xFFFF5C2A) :
                    Colors.grey,
                  ),
                ),

                //  Cart
                TextButton(
                  onPressed: () {
                    controller.updateSelectedBottomNavigationBarIndex(1);
                  },
                  child: Icon(
                    Iconsax.shopping_cart, size: 24.0,
                    color: (controller.selectedBottomNavigationBarIndex == 1) ?
                    Color(0xFFFF5C2A) :
                    Colors.grey,
                  ),
                ),

                //  Add
                TextButton(
                  onPressed: () {
                    Get.toNamed(editAuction);
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ),
                ),

                //  Question
                TextButton(
                  onPressed: () {
                    controller.updateSelectedBottomNavigationBarIndex(2);
                  },
                  child: Icon(
                    Icons.help_outline_rounded,
                    color: (controller.selectedBottomNavigationBarIndex == 2) ?
                    Color(0xFFFF5C2A) :
                    Colors.grey,
                  ),
                ),

                //  Notification
                TextButton(
                  onPressed: () {
                    controller.updateSelectedBottomNavigationBarIndex(3);
                  },
                  child: Icon(
                    Iconsax.user,
                    color: (controller.selectedBottomNavigationBarIndex == 3) ?
                    Color(0xFFFF5C2A) :
                    Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    );
  }
}
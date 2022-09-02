import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes/app_route_names.dart';

class ShippingSuccessBottomSheetWidget {
  static void shippingSuccessBottomSheetWidget() {
    Get.bottomSheet(
      Container(
        height: 400.0,
        width: Get.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  Animated Image.
                  Image.asset(
                    'assets/images/animated_check_mark_green.gif',
                    height: 100.0,
                    width: 100.0,
                  ),

                  SizedBox(height: 50.0,),

                  // Congratulations.
                  const Text(
                    'Congratulations!!!',
                    style: TextStyle(
                      color: Color(0xFFFF5C2A),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Padding(padding: EdgeInsets.all(5.0)),

                  const Text(
                    'You\'ve successfully completed your shipping.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.0,
              width: Get.width,
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.offAllNamed(dashboardScreen);

                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFFF5C2A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                  ),
                ),
                child: Text(
                  "Ok",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

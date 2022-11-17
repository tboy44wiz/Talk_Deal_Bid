import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayStackBottomSheetWidget{
  static showPayStackBottomSheetWidget (){
    Get.bottomSheet(
      Container(
        height: Get.height / 1.5,
        width: Get.width,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/paystack.png",
              height: 150,
              width: 150,
            )
          ],
        ),
      )
    );
  }
}
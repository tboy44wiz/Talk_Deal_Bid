import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../routes/app_routes/app_route_names.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Wallet",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),

      //  Body
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              flex: 18,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 20
                      ),
                      Container(
                        height: 185,
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: Color(0xffFF5C2A),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Available Balance",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "assets/images/naira.png",
                                          color: Colors.white,
                                          // height: 20,
                                          // width: 20,
                                        ),
                                      ),
                                      Text(
                                        "500,000",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 20,
                              child: Container(
                                height: 58,
                                width: 58,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: (() {
                                      Get.toNamed(fundWalletScreen);
                                    }),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2E5077),
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Icon(
                                        Iconsax.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // ============ Back Button ============
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFEEF4F8),
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/arrow_back.png",
                        width: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
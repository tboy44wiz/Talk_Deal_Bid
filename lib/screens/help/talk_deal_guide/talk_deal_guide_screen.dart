import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalkDealGuideScreen extends StatelessWidget {
  const TalkDealGuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Guides",
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
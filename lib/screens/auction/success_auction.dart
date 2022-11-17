import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/routes/app_routes/app_route_names.dart';


class SuccessAuction extends StatelessWidget {
  const SuccessAuction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          "Auction",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/animated_check_mark_green.gif", color: Color(0xffFF5C2A),),
            Text(
              "Successful",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF5C2A)
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "Your auction is under review\nWe will notify you within Two Hours",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: (){
                  Get.toNamed(dashboardScreen);
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF5C2A)
                ),
                child: Text(
                  "Back to dashboard"
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
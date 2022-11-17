import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../routes/app_routes/app_route_names.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Help",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed(talkDealGuideScreen);
                  },
                  child: Container(
                    height: 125,
                    width: 125,
                    color: Color(0xffFF5C2A),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Iconsax.book, size: 60, color: Colors.white,),
                        Text(
                          "Talk Deals Guide",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Get.toNamed(tipsAndTricksScreen);
                  },
                  child: Container(
                    height: 125,
                    width: 125,
                    color: Color(0xffFF5C2A),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Iconsax.info_circle, size: 60, color: Colors.white,),
                        Text(
                          "Tips and Tricks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

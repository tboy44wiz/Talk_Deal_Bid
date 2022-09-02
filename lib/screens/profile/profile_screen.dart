import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 180.0,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile_banner_image.png"),
                    fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFEEF4F8),
                ),
              ),
            ],
          ),

          Positioned(
            top: 130.0,
            left: 0.0,
            right: 0.0,
            /*child: CircleAvatar(
              backgroundColor: Color(0xFFEEF4F8),
              backgroundImage: AssetImage("assets/images/profile.png"),
              radius: 50.0,
            ),*/
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/profile.png"),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}

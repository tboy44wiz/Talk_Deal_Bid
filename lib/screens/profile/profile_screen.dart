import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Color(0xffFFE8E1),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 100,
              child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    Text(
                      "Osundo Tochukwu",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 450,
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading: Icon(Iconsax.edit, color: Color(0xffFF5C2A),),
                    title: Text(
                      "Edit profile",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Icon(Iconsax.wallet, color: Color(0xffFF5C2A),),
                    title: Text(
                      "Fund wallet",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Icon(Iconsax.activity, color: Color(0xffFF5C2A)),
                    title: Text(
                      "Activities",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Icon(Iconsax.logout, color: Color(0xffFF5C2A)),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
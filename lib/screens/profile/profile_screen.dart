import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../routes/app_routes/app_route_names.dart';
import '../../states/profile_state_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final ProfileStateController _profileStateController = Get.put(ProfileStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
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
        color: Color(0xffFFE8E1),
        child: Column(
          children: [
            // Container(
            //   height: Get.height,
            //   width: Get.width,
            // ),
            Expanded(
                flex: 7,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                      const SizedBox(
                        height: 20,
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
            Expanded(
              flex: 12,
              child: Container(
                // color: Colors.amber,
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
                    // ====== Edit Profile =====
                    ListTile(
                      onTap: () {
                        Get.toNamed(editProfileScreen);
                      },
                      leading: Icon(Iconsax.edit, color: Color(0xffFF5C2A),),
                      title: Text(
                        "Edit profile",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    // ======= Fund Wallet ======
                    ListTile(
                      onTap: () {
                        Get.toNamed(walletScreen);
                      },
                      leading: Icon(Iconsax.wallet, color: Color(0xffFF5C2A),),
                      title: Text(
                        "Wallet",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    // ====== Activities =====
                    ListTile(
                      onTap: () {
                        Get.toNamed(activitiesScreen);
                      },
                      leading: Icon(Iconsax.activity, color: Color(0xffFF5C2A)),
                      title: Text(
                        "Activities",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    // ====== Settings =====
                    ListTile(
                      onTap: () {
                        Get.toNamed(settingsScreen);
                      },
                      leading: Icon(Iconsax.setting, color: Color(0xffFF5C2A)),
                      title: Text(
                        "Settings",
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
      ),
    );
  }
}
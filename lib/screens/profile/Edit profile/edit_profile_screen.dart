import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          "Edit Profile",
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
          children: [
            Expanded(
              flex: 18,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage("assets/images/profile.png"),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffFF5C2A),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: IconButton(
                                  onPressed: (() {
                                    
                                  }),
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                ),
                              )
                            )
                          ],
                        ),
                      ),
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
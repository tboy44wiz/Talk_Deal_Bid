import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../states/home_state_controller.dart';


class OpenScreen extends StatelessWidget {
  OpenScreen({Key? key}) : super(key: key);

  final HomeStateController _homeStateController = Get.put(HomeStateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      padding: EdgeInsets.only(top: 10.0),
      child: GetBuilder<HomeStateController>(builder: (controller) {
        return ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color(0xFFF7F7F7),
              elevation: 8.0,
              margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 0.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                      child: Image.asset(
                        controller.allBids[index]["image"],
                        height: 75.0,
                        width: 75.0,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Get.width,
                            padding: EdgeInsets.fromLTRB(25.0, 20.0, 5.0, 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.allBids[index]["title"],
                                  style: TextStyle(
                                    fontSize: 9.0,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  controller.allBids[index]["dayTime"],
                                  style: TextStyle(
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 35.0,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.only(left: 25.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.allBids[index]["timeLeft"],
                                          style: TextStyle(
                                            color: Color(0xFFFF5C2A),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFFFF5C2A),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero
                                      ),
                                    ),
                                    child: Text(
                                      "BID NOW",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
      ),
    );
  }
}
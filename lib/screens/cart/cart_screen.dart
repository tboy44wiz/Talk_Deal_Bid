import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/routes/app_routes/app_route_names.dart';

import '../../states/cart_state_controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final CartStateController _cartStateController = Get.put(CartStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  Appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Cart",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),

      //  Body.
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xFFEEF4F8),
        padding: EdgeInsets.only(top: 10.0),
        child: GetBuilder<CartStateController>(builder: (controller) {
          return Column(
            children: [
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: controller.allCarts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // Get.toNamed(biddingScreen);
                      },
                      child: Card(
                        color: Colors.white,
                        elevation: 0.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: Stack(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20.0, 13.0, 15.0, 17.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 105.0,
                                          width: 95.0,
                                          color: Color(0xFFEEF4F8),
                                          padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                                          child: Image.asset(
                                            controller.allCarts[index]["image"],
                                            height: 75.0,
                                            width: 75.0,
                                          ),
                                        ),
                                        SizedBox(width: 15.0),

                                        Container(
                                          child: Text(
                                            "Apple Airpods pro with \nnoise cancellation",
                                            // "${controller.allCarts[index]["title"]}",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Divider(height: 0.0),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(20.0, 12.0, 15.0, 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25.0,
                                          width: 90.0,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 24.75,
                                                width: 24.75,
                                                color: Colors.black,
                                                child: Center(
                                                  child: Text(
                                                    "-",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Text(
                                                "1",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                ),
                                              ),

                                              Container(
                                                height: 24.75,
                                                width: 24.75,
                                                color: Color(0xFFFF5C2A),
                                                child: Center(
                                                  child: Text(
                                                    "+",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Text(
                                          "N350,000",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Positioned(
                              top: 2.0,
                              right: 2.0,
                              child: InkWell(
                                radius: 100.0,
                                borderRadius: BorderRadius.circular(6.0),
                                onTap: () {},
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  padding: EdgeInsets.all(9.5),
                                  child: Image.asset(
                                    "assets/images/close.png",
                                    height: 10.0,
                                    width: 10.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  height: 80.0,
                  width: Get.width,
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(shippingAddressScreen);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFFF5C2A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      ),
                    ),
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

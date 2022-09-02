import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:talk_deals/routes/app_routes/app_route_names.dart';
import 'package:talk_deals/states/bidding_state_controller.dart';

class PlaceBidBottomSheetWidget {

  static void placeBidBottomSheetWidget() {

    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    Get.bottomSheet(
      GetBuilder<BiddingStateController>(builder: (controller) {
          return Container(
            height: 250.0,
            width: Get.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "PREV BID: ",
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "N30,000",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 10.0
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),

                    TextFormField(
                      onChanged: (value) {
                        controller.updateCurrentBid(value);
                      },
                      validator: ValidationBuilder().required().build(),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero
                        ),
                        labelText: "Amount",
                        labelStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 14,
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xFFFF5C2A),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Color(0xFFFF5C2A),
                            width: 2.0,
                          ),
                        ),
                        // focusColor: Color(0xFFFF5C2A),
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                      ),
                    ),
                    SizedBox(height: 28.0),

                    (controller.isCurrentBidLessThanPreviousBid) ?
                    TextButton(
                      onPressed: () {
                        Get.back();
                        Get.toNamed(dashboardScreen);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF5C2A),
                          minimumSize: Size(Get.width, 0.0),
                          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )
                      ),
                      child: Text(
                        "PLACE BID",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                      ),
                    ) :
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF4F8),
                      ),
                      child: Center(
                        child: Text(
                          "PLACE BID",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      )
    );
  }
}

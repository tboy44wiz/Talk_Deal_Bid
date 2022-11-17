import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/states/profile_state_controller.dart';
import 'package:talk_deals/widgets/flutterwave_bottom_sheet_widget.dart';
import 'package:talk_deals/widgets/paystack_bottom_sheet_widget.dart';

class FundWalletScreen extends StatelessWidget {
  FundWalletScreen({Key? key}) : super(key: key);

  final ProfileStateController _profileStateController = Get.find<ProfileStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Fund Wallet",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<ProfileStateController>(
        builder: (controller) {
          return Container(
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
                            height: 20
                          ),
                          Text(
                            "How would you like to fund your wallet ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),     
                          ),
                          const SizedBox(
                            height: 20
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: (controller.flutterWaveChecked) ? 
                                (
                                  Stack(
                                  children: [
                                    InkWell(
                                      onTap: (() {
                                        controller.toggleFlutterWaveChecked();
                                      }),
                                      child: Container(
                                        height: 150,
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        color: Colors.white,
                                        child: Image.asset(
                                          "assets/images/flutterwave.png"
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Image.asset(
                                        "assets/images/check_icon.png",
                                        height: 30,
                                        width: 30,
                                      )
                                    )
                                  ],
                                )
                                ) : 
                                (
                                  InkWell(
                                    onTap: (() {
                                      controller.updatePayStackChecked(false);
                                      controller.toggleFlutterWaveChecked();
                                    }),
                                    child: Container(
                                      height: 150,
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "assets/images/flutterwave.png"
                                      ),
                                    ),
                                  )
                                )
                              ),
                              const SizedBox(
                                width: 20
                              ),
                              Expanded(
                                flex: 1,
                                child: (controller.payStackChecked) ? 
                                (
                                  Stack(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        controller.updateFlutterWaveChecked(false);
                                        controller.togglePayStackChecked();
                                      },
                                      child: Container(
                                        height: 150,
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        color: Colors.white,
                                        child: Image.asset(
                                          "assets/images/paystack.png",
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Image.asset(
                                        "assets/images/check_icon.png",
                                        height: 30,
                                        width: 30,
                                      )
                                    )
                                  ],
                                )
                                ) : 
                                (
                                  InkWell(
                                    onTap: (){
                                      controller.togglePayStackChecked();
                                    },
                                    child: Container(
                                      height: 150,
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "assets/images/paystack.png",
                                      ),
                                    ),
                                  )
                                )
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 50,
                            width: Get.width,
                            child: ElevatedButton(
                              onPressed: (){
                                (controller.flutterWaveChecked) ?
                                (
                                  FlutterWaveBottomSheetWidget.showFlutterWaveBottomSheetWidget()
                                ) :
                                (
                                  controller.payStackChecked
                                ) ?
                                (
                                  PayStackBottomSheetWidget.showPayStackBottomSheetWidget()
                                ) :
                                (
                                  Get.snackbar("Alert", "Please select one payment method")
                                );
                              }, 
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFF5C2A),
                                disabledBackgroundColor: Colors.grey,
                              )
                            ),
                          )
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
          );
        }
      ),
    );
  }
}
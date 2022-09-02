import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals/routes/app_routes/app_route_names.dart';
import 'package:talk_deals/states/bidding_state_controller.dart';
import 'package:talk_deals/widgets/data_table_widget.dart';
import 'package:talk_deals/widgets/place_bid_bottom_sheet_widget.dart';

class BiddingScreen extends StatelessWidget {
  BiddingScreen({Key? key}) : super(key: key);

  final BiddingStateController _biddingStateController = Get.put(BiddingStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  Body.
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 45.0,
              width: Get.width,
            ),

            //  Product Title
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 20.0),
              child: Center(
                child: Text(
                  "Xbox One Black Controller",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 10,
              child: Container(
                height: Get.height,
                width: Get.width,
                child: SingleChildScrollView(
                  child: GetBuilder<BiddingStateController>(builder: (controller) {
                      return Column(
                        children: [

                          //  Product Images
                          Container(
                            height: 90.0,
                            width: Get.width,
                            child: ListView.builder(
                              itemCount: controller.productImages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  elevation: 0.0,
                                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                                  child: Container(
                                    height: 90.0,
                                    width: 110.0,
                                    color: Color(0xFFEEF4F8),
                                    child: Image.asset(
                                      controller.productImages[index]["image"],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 25.0,),

                          //  Current Bid and Time Left
                          Container(
                            height: 78.0,
                            width: Get.width,
                            color: Color(0xFFEEF4F8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "N30,000",
                                      style: TextStyle(
                                        color: Color(0xFF058932),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 3.0),

                                    Text(
                                      "CURRENT BID",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00:58:03",
                                      style: TextStyle(
                                        color: Color(0xFFFF5C2A),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 3.0),

                                    Text(
                                      "TIME LEFT",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: Get.width,
                            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                //  Bid Button.
                                TextButton(
                                  onPressed: () {
                                    PlaceBidBottomSheetWidget.placeBidBottomSheetWidget();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFFFF5C2A),
                                    minimumSize: Size(Get.width, 0.0),
                                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  child: Text(
                                    "PLACE BID",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),

                                //  Current Highest Bidder.
                                Container(
                                  height: 115,
                                  width: Get.width,
                                  padding: EdgeInsets.all(15.0),
                                  color: Colors.black,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFEEF4F8),
                                        backgroundImage: AssetImage("assets/images/profile.png"),
                                        radius: 40.0,
                                      ),
                                      SizedBox(width: 20.0),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "CURRENT HIGHEST BIDDER",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8.0,
                                            ),
                                          ),
                                          SizedBox(height: 7.0),

                                          Text(
                                            "Tek_king",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(height: 5.0),

                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.white,
                                                size: 18.0,
                                              ),
                                              SizedBox(width: 3.0),

                                              Text(
                                                "Lagos, Nigeria",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.0),

                                //  Other Bidders.
                                Text(
                                  "Other Bidders",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8.0),

                                //  Data Table.
                                Container(
                                  height: 167.0,
                                  width: Get.width,
                                  child: SingleChildScrollView(
                                    child: DataTableWidget.dataTable(controller.allBids),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        // color: Color(0xFFEEF4F8),
        elevation: 0.0,
        child: Container(
          height: 50.0,
          width: Get.width,
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
      ),
    );
  }
}

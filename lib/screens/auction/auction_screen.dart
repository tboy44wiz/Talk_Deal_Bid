import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:talk_deals/routes/app_routes/app_route_names.dart';

class AuctionScreen extends StatelessWidget {
  const AuctionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Auction",
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
                      const SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                // ======= Product name text field =========
                                Text(
                                  "Product name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),

                            // ========== Category Drop down form field =========
                            DropdownButtonFormField<dynamic>(
                                hint: Text(
                                    "Category"
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                                ),
                                items: [],
                                onChanged: (value){

                                }
                            )
                          ],
                        ),
                      ),


                      const SizedBox(height: 30,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // =========== Product Image Picker ============
                            Text(
                              "Add images",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ========= image 1 =========
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 76,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffFF5C2A)),
                                        color: Color(0xffFFE8E1)
                                    ),
                                    child: Icon(
                                      Iconsax.add,
                                      size: 30,
                                      color: Color(0xffFF5C2A),
                                    ),
                                  ),
                                ),
                                // ========= image 2 =========
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 76,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffFF5C2A)),
                                        color: Color(0xffFFE8E1)
                                    ),
                                    child: Icon(
                                      Iconsax.add,
                                      size: 30,
                                      color: Color(0xffFF5C2A),
                                    ),
                                  ),
                                ),
                                // ========= image 3 =========
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 76,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffFF5C2A)),
                                        color: Color(0xffFFE8E1)
                                    ),
                                    child: Icon(
                                      Iconsax.add,
                                      size: 30,
                                      color: Color(0xffFF5C2A),
                                    ),
                                  ),
                                ),
                                // ========= image 4 =========
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 76,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffFF5C2A)),
                                        color: Color(0xffFFE8E1)
                                    ),
                                    child: Icon(
                                      Iconsax.add,
                                      size: 30,
                                      color: Color(0xffFF5C2A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            // ========= Image Information =============
                            Text(
                              "Images will appear L-R\nThe first image is the main image",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      ),


                      const SizedBox(height: 30,),

                      // =============== Product Description ================
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  "(optional)",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              minLines: 5,
                              maxLines: 5,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                              ),
                            ) ,
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ============ Select state dropdown ==============
                            Expanded(
                              flex: 1,
                              child: Container(
                                // color: Colors.green,
                                child: DropdownButtonFormField<dynamic>(
                                    hint: Text(
                                        "Select state"
                                    ),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                                    ),
                                    items: [],
                                    onChanged: (value){

                                    }
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),

                            // ============ Select city dropdown ===============
                            Expanded(
                              flex: 1,
                              child: Container(
                                // color: Colors.amber,
                                child: DropdownButtonFormField<dynamic>(
                                    hint: Text(
                                        "Select city"
                                    ),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                                    ),
                                    items: [],
                                    onChanged: (value){

                                    }
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(height: 30,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // =========== No. of items ============
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: SizedBox(
                                  // width: 175,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "No. of items available",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          InkWell(
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              color: Colors.black,
                                              child: Icon(Iconsax.minus, color: Colors.white, size: 15,),
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          Text(
                                              "1"
                                          ),
                                          const SizedBox(width: 10,),
                                          InkWell(
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              color: Color(0xffFF5C2A),
                                              child: Icon(Iconsax.add, color: Colors.white, size: 15 ,),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // ============ Price text field ==============
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: SizedBox(
                                  // width: 175,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Price",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text(
                                            "(Naira)",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(height: 30,),

                      // ============ Weight Text field ==============
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  "(Kg)",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                              ),
                            ),
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

                    // ============ Proceed Button ============
                    SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed(successAuction);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFF5C2A)
                          ),
                          child: Text(
                              "Proceed"
                          )
                      ),
                    )
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

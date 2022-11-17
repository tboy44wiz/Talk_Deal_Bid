import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:talk_deals/widgets/shipping_success_bottom_sheet_widget.dart';

class ShippingAddressScreen extends StatelessWidget {
  ShippingAddressScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  Body.
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45.0,
              width: Get.width,
            ),

            //  Screen Title
            Center(
              child: Text(
                "Shipping Address",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30.0),

            Expanded(
              flex: 9,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          // controller.updatePassword(value);
                        },
                        // autofocus: true,
                        keyboardType: TextInputType.name,
                        validator: ValidationBuilder().required().minLength(3).build(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 14,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5C2A),
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      TextFormField(
                        onChanged: (value) {
                          // controller.updatePassword(value);
                        },
                        // autofocus: true,
                        keyboardType: TextInputType.streetAddress,
                        validator: ValidationBuilder().required().minLength(3).build(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 14,
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color(0xFFFF5C2A),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5C2A),
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      TextFormField(
                        onChanged: (value) {
                          // controller.updatePassword(value);
                        },
                        // autofocus: true,
                        keyboardType: TextInputType.streetAddress,
                        validator: ValidationBuilder().required().minLength(3).build(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          labelText: "Phone No",
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 14,
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color(0xFFFF5C2A),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5C2A),
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      Container(
                        // height: 50.0,
                        width: Get.width,
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                              width: 1.0
                          ),
                        ),
                        child: Text(
                          "Nigeria",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      TextFormField(
                        onChanged: (value) {
                          // controller.updatePassword(value);
                        },
                        // autofocus: true,
                        keyboardType: TextInputType.streetAddress,
                        validator: ValidationBuilder().required().minLength(3).build(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          labelText: "Select State",
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 14,
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color(0xFFFF5C2A),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5C2A),
                              width: 2.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child:
                            TextFormField(
                              onChanged: (value) {
                                // controller.updatePassword(value);
                              },
                              // autofocus: true,
                              keyboardType: TextInputType.streetAddress,
                              validator: ValidationBuilder().required().minLength(3).build(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero
                                ),
                                labelText: "City",
                                labelStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontSize: 14,
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(0xFFFF5C2A),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5C2A),
                                    width: 2.0,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0),

                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              onChanged: (value) {
                                // controller.updatePassword(value);
                              },
                              // autofocus: true,
                              keyboardType: TextInputType.streetAddress,
                              validator: ValidationBuilder().required().minLength(3).build(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero
                                ),
                                labelText: "Zip Code",
                                labelStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontSize: 14,
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(0xFFFF5C2A),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5C2A),
                                    width: 2.0,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: TextButton(
                  onPressed: () {
                    ShippingSuccessBottomSheetWidget.shippingSuccessBottomSheetWidget();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF5C2A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
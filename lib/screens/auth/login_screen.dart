import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_validator/form_validator.dart';

import '../../routes/app_routes/app_route_names.dart';
import '../../widgets/app_snackBar_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AppSnackBar _appSnackBar = AppSnackBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: _appSnackBar.snackBar('Tap back again to exit the app.', 'Info'),
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                        "assets/images/login_screen _bg.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        top: 40.0,
                        left: 30.0,
                        child: Image.asset(
                          "assets/images/app_logo.png",
                          scale: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 5.0),

                        Row(
                          children: [
                            Text(
                              "Welcome back to ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "TalkDeals",
                              style: TextStyle(
                                color: Color(0xFFFF5C2A),
                                fontSize: 11,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 35.0),

                        Form(
                          key: _formKey,
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
                                  labelText: "Username",
                                  labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontSize: 14,
                                  ),
                                  floatingLabelStyle: TextStyle(
                                    color: Color(0xFFFF5C2A),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFFF5C2A),
                                        width: 2.0,
                                    ),
                                  ),
                                  // focusColor: Color(0xFFFF5C2A),
                                  contentPadding: EdgeInsets.all(0.0),
                                ),
                              ),
                              SizedBox(height: 20.0),

                              TextFormField(
                                onChanged: (value) {
                                  // controller.updatePassword(value);
                                },
                                validator: ValidationBuilder().email().maxLength(50).build(),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontSize: 14,
                                  ),
                                  floatingLabelStyle: TextStyle(
                                    color: Color(0xFFFF5C2A),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5C2A),
                                      width: 2.0,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.all(0.0),
                                ),
                              ),
                              SizedBox(height: 35.0),

                              TextButton(
                                onPressed: () {
                                  Get.offNamed(dashboardScreen);
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  minimumSize: Size(Get.width, 0.0),
                                  padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0)
                                ),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "or continue with ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(width: 7.0),

                                Image.asset(
                                  "assets/images/google_logo.png",
                                  height: 12.0,
                                  width: 12.0,
                                ),
                                SizedBox(width: 15.0),

                                Image.asset(
                                  "assets/images/facebook_logo.png",
                                  height: 12.0,
                                  width: 12.0,
                                ),
                                SizedBox(width: 15.0),

                                Image.asset(
                                  "assets/images/apple_logo.png",
                                  height: 12.0,
                                  width: 12.0,
                                ),
                              ],
                            ),

                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 75.0),

                        //  Don't have an account.
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(signUpScreen);
                              },
                              child: Text(
                                "Sign Up Here",
                                style: TextStyle(
                                    color: Color(0xFFFF5C2A),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
}

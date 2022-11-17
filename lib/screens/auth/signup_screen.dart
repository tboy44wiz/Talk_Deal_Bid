import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_validator/form_validator.dart';

import '../../routes/app_routes/app_route_names.dart';
import '../../widgets/app_snackBar_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AppSnackBar _appSnackBar = AppSnackBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar:
            _appSnackBar.snackBar('Tap back again to exit the app.', 'Info'),
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
                        "assets/images/signup_screen _bg.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        top: 40.0,
                        right: 20.0,
                        child: Image.asset(
                          "assets/images/app_logo.png",
                          scale: 1.9,
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
                    padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let’s get you started",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5.0),

                        Text(
                          "Create an account to get\namazing deals",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {},
                                // autofocus: true,
                                keyboardType: TextInputType.name,
                                validator: ValidationBuilder()
                                    .required()
                                    .minLength(3)
                                    .build(),
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
                              SizedBox(height: 10.0),
                              TextFormField(
                                onChanged: (value) {},
                                // autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                validator: ValidationBuilder()
                                    .required()
                                    .email()
                                    .minLength(3)
                                    .build(),
                                decoration: InputDecoration(
                                  labelText: "Email",
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
                              SizedBox(height: 10.0),
                              TextFormField(
                                onChanged: (value) {},
                                validator: ValidationBuilder().build(),
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
                              SizedBox(height: 10.0),
                              TextFormField(
                                onChanged: (value) {},
                                validator: ValidationBuilder().build(),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
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
                              SizedBox(height: 28.0),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    minimumSize: Size(Get.width, 0.0),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 15.0)),
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 25.0),
                            ],
                          ),
                        ),

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
                        SizedBox(height: 35.0),

                        //  Already have an account.
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                print("GGGG::: $SignUpScreen");
                                Get.offNamed(loginScreen);
                              },
                              child: Text(
                                "Login Here",
                                style: TextStyle(
                                    color: Color(0xFFFF5C2A),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700),
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

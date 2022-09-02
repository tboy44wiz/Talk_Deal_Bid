import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import './routes/app_routes/app_routes.dart';
import './routes/app_routes/app_route_names.dart';

void main() async {
  //  Call this whenever you're using "async" in the "main" method.
  WidgetsFlutterBinding.ensureInitialized();

  FlutterSecureStorage _flutterSecureStorage = const FlutterSecureStorage();
  String _loggedInUser = await _flutterSecureStorage.read(key: 'loggedInUser') ?? "";

  //  Decode _loggedInUser
  Map<String, dynamic>? _decodedLoggedInUser;
  if (_loggedInUser.isNotEmpty) {
    _decodedLoggedInUser = jsonDecode(_loggedInUser);
  }

  runApp(MyApp(
    loggedInUserData: _decodedLoggedInUser,
  ));
}

class MyApp extends StatelessWidget {
  final Map<String, dynamic>? loggedInUserData;

  const MyApp({Key? key, this.loggedInUserData}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    String _initialRoute = (loggedInUserData == null)
        ? splashScreen
        : splashScreen;

    return GetMaterialApp(

      title: 'Talk Deals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),

      initialRoute: _initialRoute,
      getPages: getPages,
    );
  }
}
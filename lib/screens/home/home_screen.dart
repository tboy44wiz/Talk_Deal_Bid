import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'all_screen.dart';
import 'open_screen.dart';
import 'winners_screen.dart';
import 'upcoming_screen.dart';
import '../../states/home_state_controller.dart';
import '../../widgets/app_snackBar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeStateController _homeStateController = Get.put(HomeStateController());
  final AppSnackBar _appSnackBar = AppSnackBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  Appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Home",
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
        color: Colors.white,
        child: Column(
          children: [
            //  Search Box.
            Container(
              height: 85.0,
              width: Get.width,
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 10.0),
              child: Container(
                height: 45.0,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.5),
                  color: const Color(0xFFD8DDE7),
                  // color: Colors.red
                ),
                padding: const EdgeInsets.all(0.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Search Talk Deals",
                    hintStyle: TextStyle(
                      color: Color(0xFF393D46),
                      fontSize: 14.0,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 18.0,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF393D46),
                    ),
                  ),
                  style: const TextStyle(
                    color: Color(0xFF393D46),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                height: Get.height,
                width: Get.width,
                child: DefaultTabController(
                  length: 4,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      //  TabBar
                      SizedBox(
                        height: 40.0,
                        child: TabBar(
                          indicatorColor: Colors.transparent,
                          labelColor: Color(0xFFFF5C2A),
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            //  All
                            Tab(
                              child: Text(
                                'All',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            //  Open
                            Tab(
                              child: Text(
                                'Open',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            //  Upcoming
                            Tab(
                              child: Text(
                                'Upcoming',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            //  Winners
                            Tab(
                              child: Text(
                                'Winners',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //  TabBar Views
                      Expanded(
                        child: TabBarView(
                          children: [
                            //  All
                            AllScreen(),

                            //  Open
                            OpenScreen(),

                            //  Upcoming
                            UpcomingScreen(),

                            //  Winners
                            WinnersScreen(),
                          ],
                        ),
                      )
                    ],
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
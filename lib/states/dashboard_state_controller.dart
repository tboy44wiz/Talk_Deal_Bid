import 'package:get/get.dart';

class DashboardStateController extends GetxController {

  int _selectedBottomNavigationBarIndex = 0;


  /*
  * GETTERS
  * */
  int get selectedBottomNavigationBarIndex => _selectedBottomNavigationBarIndex;



  /*
  * SETTERS
  * */
  void updateSelectedBottomNavigationBarIndex(int index) {
    _selectedBottomNavigationBarIndex = index;
    update();
  }
}
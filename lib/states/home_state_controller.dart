import 'package:get/get.dart';

class HomeStateController extends GetxController {

  List<Map<String, dynamic>> _allBids = [
    {
      "id": 1,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 2,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 3,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 4,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 5,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 6,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
    {
      "id": 7,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "dayTime": "(Today at 11:56 pm)",
      "timeLeft": "00:58:03"
    },
  ];



  /*
  * GETTERS
  * */
  List<Map<String, dynamic>> get allBids => _allBids;



  /*
  * SETTERS
  * */
  void updateAllBids(List<Map<String, dynamic>> value) {
    _allBids = value;
    update();
  }
}
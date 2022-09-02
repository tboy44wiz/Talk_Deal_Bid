import 'package:get/get.dart';

class CartStateController extends GetxController {

  List<Map<String, dynamic>> _allCarts = [
    {
      "id": 1,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with \nnoise cancellation",
      "price": "N30,000",
    },
    {
      "id": 2,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "price": "N29,000",
    },
    {
      "id": 3,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "price": "N28,000",
    },
    {
      "id": 4,
      "image": "assets/images/product_image.png",
      "title": "Apple Airpods pro with noise cancellation",
      "price": "N26.000",
    },
  ];




  /*
  * GETTERS
  * */
  List<Map<String, dynamic>> get allCarts => _allCarts;



  /*
  * SETTERS
  * */
  void updateAllCarts(List<Map<String, dynamic>> value) {
    _allCarts = value;
    update();
  }
}
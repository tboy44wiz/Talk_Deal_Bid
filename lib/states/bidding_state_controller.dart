import 'package:get/get.dart';

class BiddingStateController extends GetxController {

  String _currentBid = "";
  int _previousBid = 30000;
  bool _isCurrentBidLessThanPreviousBid = false;
  List<Map<String, dynamic>> _productImages = [
    {
      "id": 1,
      "image": "assets/images/game_pad1.png",
    },
    {
      "id": 2,
      "image": "assets/images/game_pad2.png",
    },
    {
      "id": 3,
      "image": "assets/images/game_pad3.png",
    },
    {
      "id": 4,
      "image": "assets/images/game_pad1.png",
    },
    {
      "id": 5,
      "image": "assets/images/game_pad2.png",
    },
  ];

  List<Map<String, dynamic>> _allBids = [
    {
      "id": 1,
      "price": "N30,000",
      "bidder": "Sabinus",
      "time": "11:08:45 AM"
    },
    {
      "id": 2,
      "price": "N29,000",
      "bidder": "Lonewolf2504",
      "time": "10:31:14 AM"
    },
    {
      "id": 3,
      "price": "N28,000",
      "bidder": "sillian910",
      "time": "10:30:23 AM"
    },
    {
      "id": 4,
      "price": "N26.000",
      "bidder": "Lonewolf2504",
      "time": "10:08:45 AM"
    },
    {
      "id": 5,
      "price": "N25.000",
      "bidder": "Sabinus",
      "time": "09:21:13 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
    {
      "id": 6,
      "price": "N23,000",
      "bidder": "sillian910",
      "time": "08:30:23 AM"
    },
  ];




  /*
  * GETTERS
  * */
  String get currentBid => _currentBid;
  int get previousBid => _previousBid;
  bool get isCurrentBidLessThanPreviousBid => _isCurrentBidLessThanPreviousBid;
  List<Map<String, dynamic>> get productImages => _productImages;
  List<Map<String, dynamic>> get allBids => _allBids;



  /*
  * SETTERS
  * */
  void updateCurrentBid(String value) {
    _currentBid = value;
    _isCurrentBidLessThanPreviousBid = _currentBid.isNotEmpty  && int.parse(_currentBid) > _previousBid;
    update();
  }
  void updatePreviousBid(int value) {
    _previousBid = value;
    update();
  }
  void updateProductImages(List<Map<String, dynamic>> value) {
    _productImages = value;
    update();
  }
  void updateAllBids(List<Map<String, dynamic>> value) {
    _allBids = value;
    update();
  }
}
import 'package:get/get.dart';


class ProfileStateController extends GetxController{

  bool _flutterWaveChecked = false;
  bool _payStackChecked = false;

  bool get flutterWaveChecked => _flutterWaveChecked;
  bool get payStackChecked => _payStackChecked;


  updateFlutterWaveChecked (value){
    _flutterWaveChecked = value;
    update();
  }
  updatePayStackChecked (value){
    _payStackChecked = value;
    update();  
  }
  toggleFlutterWaveChecked (){
    _flutterWaveChecked = !_flutterWaveChecked;
    update();
  }
  togglePayStackChecked (){
    _payStackChecked = !_payStackChecked;
    update();
  }
}
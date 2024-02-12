import 'package:get/get.dart';
import 'dart:math' as math;

class UserInputDataController extends GetxController {
  RxInt _height = 130.obs;
  int get height => _height.value;
  set height(int value) {
    _height.value = value;
    update();
  }

  RxInt _weight = 50.obs;
  int get weight => _weight.value;
  set weight(int value) {
    _weight.value = value;
    update();
  }

  RxDouble _bmi = 0.0.obs;
  double get bmi => _bmi.value;
  set bmi(double value) {
    _bmi.value = value;
    update();
  }

  RxBool _visibility = false.obs;
  bool get visibility => _visibility.value;
  set visibility(bool value) {
    _visibility.value = value;
    update();
  }

  void calculateBMI() {
    _bmi.value = _weight.value / math.pow(_height.value/100, 2);
    _visibility.value = true;
    update();
  }

  String getBMIValue() {
    if (_bmi.value > 40) {
      return 'Pathological Obesity';
    } else if (_bmi.value > 30) {
      return 'Obesity';
    } else if (_bmi.value > 25) {
      return 'Overweight';
    } else if (_bmi.value > 18.5) {
      return 'Normal Nutrition State';
    } else if (_bmi.value > 17) {
      return 'Slight Undernourishment';
    } else if (_bmi.value > 16) {
      return 'Medium Undernourishment';
    } else {
      return 'Severe Undernourishment';
    }
  }

}

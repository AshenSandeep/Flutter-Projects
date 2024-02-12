import 'package:get/get.dart';

class HomeViewController extends GetxController{

  RxInt count = 0.obs;

  void incrementCounter()
  {
    count.value++;
    update();
  }

}
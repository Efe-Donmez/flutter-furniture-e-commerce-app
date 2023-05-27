import 'package:get/get.dart';

class MyState extends GetxController {
  var currentIndex = 0.obs;

  navbarUpdate(int value) {
    currentIndex.value = value;
  }
}

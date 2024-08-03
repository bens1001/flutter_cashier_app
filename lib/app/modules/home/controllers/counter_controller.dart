import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count = count + 1;
    update();
  }

  void decrement() {
    if (count > 0) {
      count = count - 1;
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:get/get.dart';

import 'package:flutter_cashier_app/app/modules/home/controllers/counter_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(
      () => CounterController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

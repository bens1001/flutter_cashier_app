import 'package:flutter_cashier_app/app/modules/home/controllers/counter_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePhoneView extends GetView<HomeController> {
  const HomePhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePhoneView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller.counterController.decrement();
                  },
                  icon: const Icon(Icons.minimize_outlined)),
              GetBuilder(
                init: CounterController(),
                builder: (_) {
                  return Text(
                    _.count.toString(),
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
              IconButton(
                  onPressed: () {
                    controller.counterController.increment();
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
          OutlinedButton(
            onPressed: () {
              // Get.offNamed(Routes.AUTH);
            },
            child: const Icon(Icons.arrow_circle_right_rounded),
          )
        ],
      ),
    );
  }
}

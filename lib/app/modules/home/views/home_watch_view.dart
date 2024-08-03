import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeWatchView extends GetView<HomeController> {
  const HomeWatchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWatchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeWatchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

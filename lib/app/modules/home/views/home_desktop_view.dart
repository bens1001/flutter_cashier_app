import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeDesktopView extends GetView<HomeController> {
  const HomeDesktopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeDesktopView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeDesktopView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

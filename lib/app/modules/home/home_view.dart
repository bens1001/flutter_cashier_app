import 'package:flutter_cashier_app/app/modules/home/views/home_desktop_view.dart';
import 'package:flutter_cashier_app/app/modules/home/views/home_phone_view.dart';
import 'package:flutter_cashier_app/app/modules/home/views/home_tablet_view.dart';
import 'package:flutter_cashier_app/app/modules/home/views/home_watch_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeResponsiveView extends GetResponsiveView {
  HomeResponsiveView({super.key});

  @override
  Widget? phone() {
    return const HomePhoneView();
  }

  @override
  Widget? tablet() {
    return const HomeTabletView();
  }

  @override
  Widget? watch() {
    return const HomeWatchView();
  }

  @override
  Widget? desktop() {
    return const HomeDesktopView();
  }
}

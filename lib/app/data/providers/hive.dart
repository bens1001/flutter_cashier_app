import 'package:hive_flutter/hive_flutter.dart';


abstract class HiveProvider {
  static Future init() async {
    await Hive.initFlutter();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  @override
  int count = 0;
  void increase() {
    count++;
    update();
  }
}

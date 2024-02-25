import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller_with_reactive.dart';
import 'package:get_x/controller/getX_controller.dart';
import 'package:get_x/controller/provier_controller.dart';
import 'package:get_x/screens/sate/withgetx.dart';
import 'package:get_x/screens/sate/withprovier.dart';
import 'package:provider/provider.dart';

class SimpleStateManager extends StatelessWidget {
  const SimpleStateManager({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(CountControllerWithGetX());
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('단순 상태관리 '),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'GetX',
              style: TextStyle(fontSize: 30),
            ),
            Obx(() => Text(
                  '${Get.find<CountControllerWithReactive>().count.value}',
                  style: TextStyle(fontSize: 20),
                )),
            FilledButton(
                onPressed: () {
                  Get.find<CountControllerWithReactive>().increase();
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}

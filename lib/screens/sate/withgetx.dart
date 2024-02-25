import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/getX_controller.dart';
import 'package:get_x/controller/provier_controller.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('GetX', style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetX>(builder: (controller) {
            return Text('${controller.count}', style: TextStyle(fontSize: 50));
          }),
          FilledButton(
              onPressed: () {
                Get.find<CountControllerWithGetX>().increase();
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}

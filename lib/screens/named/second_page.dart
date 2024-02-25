import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/home_screen.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
                child: Center(
                  child: Text('뒤로 가기'),
                )),
            SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  Get.to(Home());
                  Get.offAll(Home());
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //     MaterialPageRoute(builder: (_) => Home()) as String,
                  //     (route) => false);
                },
                child: Center(
                  child: Text('홈으로'),
                ))
          ],
        ),
      ),
    );
  }
}

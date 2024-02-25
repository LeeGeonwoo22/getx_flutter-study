import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/home_screen.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: Center(
                  child: Text('일반적인 네임드 라우트'),
                )),
            SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  Get.toNamed('/second');
                },
                child: Center(
                  child: Text('Get Named 라우트'),
                )),
            SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  Get.offNamed('/second');
                },
                child: Center(
                  child: Text('Get NamedOff 라우트'),
                )),
            Text(
              // // '${Get.arguments.toString()}',
              // '${Get.arguments['name']} : ${Get.arguments['age']}',

              '${(Get.arguments as User).name} : ${(Get.arguments as User).age}',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

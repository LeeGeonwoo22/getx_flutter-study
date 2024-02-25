import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/normal/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecondPage()));
                },
                child: Center(
                  child: Text('일반적인 라우트'),
                )),
            SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Center(
                  child: Text('Get 라우트'),
                ))
          ],
        ),
      ),
    );
  }
}

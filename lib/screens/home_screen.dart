import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/named/first_page.dart';
import 'package:get_x/screens/normal/first_page.dart';
import 'package:get_x/screens/sate/simple_state.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FirstNamedPage()));
                },
                child: Center(
                  child: Text('일반적인 라우트'),
                )),
            SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  Get.to(FirstNamedPage());
                },
                child: Center(
                  child: Text('Get 라우트'),
                )),
            FilledButton(
                onPressed: () {
                  Get.offNamed('/first');
                },
                child: Center(
                  child: Text('Get NamedOff 라우트'),
                )),
            FilledButton(
                onPressed: () {
                  // Get.offNamed('/first',
                  //     arguments: {'name': '건우', 'age': '22'});
                  Get.offNamed('/first', arguments: User('건우', '22'));
                },
                child: Center(
                  child: Text('Get Arguments 보내기'),
                )),
            FilledButton(
                onPressed: () {
                  // Get.offNamed('/first',
                  //     arguments: {'name': '건우', 'age': '22'});
                  Get.toNamed('/user/28357?name=건우&age=22');
                },
                child: Center(
                  child: Text('동적 url 라우트'),
                )),
            FilledButton(
                onPressed: () {
                  Get.to(SimpleStateManager());
                },
                child: Center(
                  child: Text('단순상태관리'),
                )),
            FilledButton(
              onPressed: () {
                Get.to(SimpleStateManager());
              },
              child: Center(child: Text('반응')),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  String age;
  User(this.name, this.age);
}

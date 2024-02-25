import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/home_screen.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
            Text('${Get.parameters['uid']}'),
            Text('${Get.parameters['name']}님 안녕하세요 '),
            Text('${Get.parameters['age']}세'),
          ],
        ),
      ),
    );
  }
}

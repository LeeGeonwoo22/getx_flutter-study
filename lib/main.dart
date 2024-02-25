import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/example.dart';
import 'package:get_x/screens/home_screen.dart';
import 'package:get_x/screens/named/first_page.dart';
import 'package:get_x/screens/named/second_page.dart';
import 'package:get_x/screens/uri/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: const Home(),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(
            name: "/", page: () => mycheckbox(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.fade),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.fadeIn),
      ],
    );
  }
}

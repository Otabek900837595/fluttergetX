import 'package:flutter/material.dart';
import 'package:flutterpatternget/pages/home_page.dart';
import 'package:flutterpatternget/pages/main_page.dart';
import 'package:flutterpatternget/service/bind_service.dart';
import 'package:flutterpatternget/service/di_service.dart';
import 'package:get/get.dart';

void main() async {
  await DIService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // initialBinding: BindService(),
      // getPages: [
      //   GetPage(
      //     name: "/main_page",
      //     page:() => MainPage(),
      //     binding: BindService(),
      //   ),
      // ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncl_assessment/views/my_home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'NCL Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NCL Assessment'),
    );
  }
}


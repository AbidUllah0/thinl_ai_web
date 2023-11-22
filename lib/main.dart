import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/screen/HomePage.dart';
import 'package:project22/screen/drawer/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MediaQuery Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: CustomDrawer(),
    );
  }
}

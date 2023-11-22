import 'package:flutter/material.dart';
import 'package:project22/screen/Login/login_page.dart';
import 'package:project22/screen/drawer/drawer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter MediaQuery Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:   LoginScreen(),
        );
      },
    );
  }
}

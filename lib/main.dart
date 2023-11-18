import 'package:flutter/material.dart';
import 'package:project22/screen/HomePage.dart';
import 'package:project22/screen/Login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          home:  const MyHomePage(),
        );
      },
    );
  }
}


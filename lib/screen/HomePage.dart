import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import '../widget/drawer.dart';
import 'GenerateEvent/generate_event.dart';
import 'GenerateEvent/generate_event3.dart';
import 'GenerateEvent/generate_eventscreen2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        drawerEnableOpenDragGesture: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              MediaQuery.of(context).size.width > 800
                  ? const Drawer()
                  : Container(), // An empty container when the width is less than or equal to 800
               const Expanded(child: GenerateEventScreen()),
            ],
          ),

        ));
  }
}

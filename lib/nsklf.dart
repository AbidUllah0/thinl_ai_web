import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.dangerous_sharp),
              title: Text("shfkj"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Faisal"),
        centerTitle: true,
      ),
    );
  }
}

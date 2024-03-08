import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: const [
          Icon(Icons.circlular),
        ]),
        body: GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

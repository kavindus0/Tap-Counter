import 'package:flutter/material.dart';

class BaseFile extends StatefulWidget {
  const BaseFile({super.key});

  @override
  State<BaseFile> createState() => _BaseFileState();
}

class _BaseFileState extends State<BaseFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: const [
          Icon(Icons.restart_alt),
          Spacer(),
          Text("Tap Counter"),
          Spacer(),
          Icon(Icons.info),
        ]),
        body: GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Spacer(),
                  Center(child: Text("Tap Me")),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

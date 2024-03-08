import 'package:flutter/material.dart';

class BaseFile extends StatefulWidget {
  const BaseFile({super.key});

  @override
  State<BaseFile> createState() => _BaseFileState();
}

class _BaseFileState extends State<BaseFile> {
  int taps = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  taps = 0;
                });
              },
              icon: const Icon(Icons.restart_alt)),
          const Spacer(),
          const Text("Tap Counter"),
          const Spacer(),
          const Icon(Icons.info),
        ]),
        body: GestureDetector(
          onTap: () {
            setState(() {
              taps++;
            });
          },
          child: Center(
            child: Container(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Center(
                      child: Text(
                    taps.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  )),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

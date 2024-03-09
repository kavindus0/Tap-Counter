import 'package:flutter/material.dart';
import 'package:info_popup/info_popup.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

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
          const Text(
            "Tap Counter",
            style: TextStyle(fontSize: 23),
          ),
          const Spacer(),
          const InfoPopupWidget(
            contentTitle:
                'Tap Below Body To Start Counting. If you tap on the RESET, the count will reset.',
            child: Icon(
              Icons.info,
              color: Colors.green,
            ),
          ),
        ]),
        body: GestureDetector(
          onTap: () {
            setState(() {
              taps++;
            });
          },
          child: Center(
            child: Container(
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Center(
                    child: AnimatedFlipCounter(
                      value: taps,
                      duration: const Duration(milliseconds: 200),
                      textStyle: TextStyle(color: Colors.white, fontSize: 150),
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Text(
                      'Reset'.toUpperCase(),
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        taps = 0;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

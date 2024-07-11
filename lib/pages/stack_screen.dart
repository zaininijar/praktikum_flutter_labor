import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text(
            "Stack",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
          height: double.infinity,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red)),
                height: 600,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      color: Colors.green,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 120,
                        height: 120,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 160,
                        height: 160,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

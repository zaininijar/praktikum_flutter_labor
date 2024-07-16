import 'package:flutter/material.dart';

class ActivitySavedScreen extends StatelessWidget {
  const ActivitySavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Activity Saved Screen",
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Text(
          "Activity Saved Screen",
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}

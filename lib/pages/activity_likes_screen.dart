import 'package:flutter/material.dart';

class ActivityLikesScreen extends StatelessWidget {
  const ActivityLikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Activity Likes Screen",
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Text(
          "Activity Likes Screen",
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}

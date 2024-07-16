import 'package:flutter/material.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Setting Screen",
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Text(
          "Account Setting Screen",
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}

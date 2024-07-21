import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Navbar({super.key, required this.appBar});

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Elektronik',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: const Icon(Icons.account_circle_rounded),
        )
      ],
    );
  }
}

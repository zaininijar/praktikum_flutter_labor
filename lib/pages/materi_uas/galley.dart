import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';

class Galley extends StatelessWidget {
  const Galley({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text("Galley"),
      ),
    );
  }
}
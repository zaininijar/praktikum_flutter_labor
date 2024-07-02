import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/feeds_screen.dart';
import 'package:praktikum_flutter_labor/pages/grid_view_screen.dart';
import 'package:praktikum_flutter_labor/pages/list_view_screen.dart';
import 'package:remixicon/remixicon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Remix.home_2_line)),
                Tab(icon: Icon(Remix.nft_line)),
                Tab(icon: Icon(Remix.list_indefinite)),
              ],
            ),
            title: const Text('ZeenApp'),
          ),
          body: const TabBarView(
            children: [
              FeedsScreen(),
              GridViewScreen(),
              ListViewScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

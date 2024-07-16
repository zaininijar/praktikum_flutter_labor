import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/components/sidebar.dart';
import 'package:praktikum_flutter_labor/pages/feeds_screen.dart';
import 'package:praktikum_flutter_labor/pages/grid_view_masonry_screen.dart';
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
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('ZeenApp'),
            actions: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: const Icon(Remix.settings_line),
              )
            ],
          ),
          bottomNavigationBar: navigationMenu(),
          drawer: const Sidebar(),
          body: const TabBarView(
            children: [
              FeedsScreen(),
              GridViewMasonryScreen(),
              GridViewScreen(),
              ListViewScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigationMenu() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1),
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: const TabBar(
        dividerHeight: 0,
        tabs: [
          Tab(
              icon: Icon(
            Remix.home_2_line,
            color: Colors.white,
          )),
          Tab(
              icon: Icon(
            Remix.nft_line,
            color: Colors.white,
          )),
          Tab(
              icon: Icon(
            Remix.grid_line,
            color: Colors.white,
          )),
          Tab(
              icon: Icon(
            Remix.list_indefinite,
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}

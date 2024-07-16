import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/activity_likes_screen.dart';
import 'package:praktikum_flutter_labor/pages/activity_saved_screen.dart';
import 'package:remixicon/remixicon.dart';

class Sidebar extends Drawer {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.only(right: 10),
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    radius: 50.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/profile.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'ZeenApp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Remix.heart_line),
            title: const Text('Recent Likes'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ActivityLikesScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Remix.bookmark_line),
            title: const Text('Saved'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ActivitySavedScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Remix.settings_line),
            title: const Text('Account Setting'),
            onTap: () {},
          ),
          const Spacer(
            flex: 1,
          ),
          ListTile(
            leading: const Icon(Remix.logout_circle_line),
            title: const Text('Logout'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';

List listData = [
  {
    "id": "550",
    "title": "Title 1",
    "titleColor": Colors.indigoAccent,
    "iconColor": const Color.fromARGB(255, 0, 156, 161)
  },
  {
    "id": "913",
    "title": "Title 2",
    "titleColor": const Color.fromARGB(255, 115, 77, 255),
    "iconColor": Colors.indigoAccent,
  },
  {
    "id": "878",
    "title": "Title 3",
    "titleColor": Colors.blueAccent,
    "iconColor": Colors.purpleAccent
  },
  {
    "id": "092",
    "title": "Title 4",
    "titleColor": Colors.purpleAccent,
    "iconColor": Colors.blueAccent
  },
  {
    "id": "158",
    "title": "Title 5",
    "titleColor": const Color.fromARGB(255, 255, 68, 21),
    "iconColor": const Color.fromARGB(255, 0, 174, 151),
  },
  {
    "id": "507",
    "title": "Title 6",
    "titleColor": const Color.fromARGB(255, 195, 0, 139),
    "iconColor": Colors.redAccent,
  },
];

class HomeDetail extends StatelessWidget {
  const HomeDetail(this.id, this.title, this.titleColor, this.iconColor,
      {super.key});

  final String id;
  final String title;
  final Color titleColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Text(title),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList(this.id, this.title, this.titleColor, this.iconColor,
      {super.key});

  final String id;
  final String title;
  final Color titleColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeDetail(id, title, titleColor, iconColor);
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 240, 255),
          // border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.send,
              color: iconColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeViewUas extends StatelessWidget {
  const HomeViewUas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.deepPurpleAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Ucapan Selamat Datang",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.dashboard,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Buatlah Sebuah Tombol",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -20, 0),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(listData.length, (index) {
                  return CardList(
                    listData[index]['id'],
                    listData[index]['title'],
                    listData[index]['titleColor'],
                    listData[index]['iconColor'],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

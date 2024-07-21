import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/home.dart';
import 'package:praktikum_flutter_labor/pages/stack_screen.dart';
import 'package:praktikum_flutter_labor/services/api_service.dart';

List listData = [
  {
    "id": "1",
    "title": "Belajar Stack dengan flutter",
    "description":
        "lorem ipsum dolor sit amet, consectetured, sed diam nonumy eirmod.",
    "page": const StackScreen(),
    "picture_path":
        "https://images.unsplash.com/photo-1637518027965-ce585cb5f604?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Ahmad Zaini Nijar",
      "picture_path":
          "https://avatars.githubusercontent.com/u/90563272?s=400&u=da73c09c30960eca0e411da0fdf43e4ee6c29e3b&v=4"
    },
    "created_at": "3 Seconds ago"
  },
  {
    "id": "2",
    "title": "Materi Ujian Akhir Semester",
    "description":
        "lorem ipsum dolor sit amet, consectetured, sed diam nonumy eirmod.",
    "page": const HomeViewUas(),
    "picture_path":
        "https://images.unsplash.com/photo-1637518027965-ce585cb5f604?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Ahmad Zaini Nijar",
      "picture_path":
          "https://avatars.githubusercontent.com/u/90563272?s=400&u=da73c09c30960eca0e411da0fdf43e4ee6c29e3b&v=4"
    },
    "created_at": "3 Seconds ago"
  }
];

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  late Future<List<UnsplashImageModel>> futureUnsplashImages;

  @override
  void initState() {
    super.initState();
    futureUnsplashImages = fetchUnsplashImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, index) {
            final data = listData[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => data['page']),
                );
              },
              child: CardList(
                data['id'],
                data['title'],
                data['picture_path'],
                data['description'],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final String id;
  final String title;
  final String picturePath;
  final String description;

  const CardList(
    this.id,
    this.title,
    this.picturePath,
    this.description, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(picturePath),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

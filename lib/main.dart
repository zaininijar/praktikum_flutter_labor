import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/components/custom_card.dart';

void main() => runApp(const MyApp());

List feedData = [
  {
    "id": "1",
    "title": "Flutter awesome app",
    "description": "lorem ipsum dolor sit amet, consectetur",
    "picture_path":
        "https://images.unsplash.com/photo-1637518027965-ce585cb5f604?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Ahmad Zaini Nijar",
      "picture_path":
          "https://avatars.githubusercontent.com/u/90563272?s=400&u=da73c09c30960eca0e411da0fdf43e4ee6c29e3b&v=4"
    },
    "created_at": "2024-10-12 15:10:44"
  },
  {
    "id": "1",
    "title": "Flutter awesome app",
    "description": "lorem ipsum dolor sit amet, consectetur",
    "picture_path":
        "https://images.unsplash.com/photo-1527838832700-5059252407fa?q=80&w=3078&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Wahyu Hidayat",
      "picture_path":
          "https://images.unsplash.com/profile-1527837996962-51b7f3ccc60b?bg=fff&crop=faces&dpr=2&h=32&w=32&auto=format&fit=crop&q=60&ixlib=rb-4.0.3"
    },
    "created_at": "2024-10-12 15:10:44"
  },
  {
    "id": "1",
    "title": "Flutter awesome app",
    "description": "lorem ipsum dolor sit amet, consectetur",
    "picture_path":
        "https://images.unsplash.com/photo-1582631313764-62141d98b4bb?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Habib Erdian",
      "picture_path":
          "https://images.unsplash.com/profile-1527837996962-51b7f3ccc60b?bg=fff&crop=faces&dpr=2&h=32&w=32&auto=format&fit=crop&q=60&ixlib=rb-4.0.3"
    },
    "created_at": "2024-10-12 15:10:44"
  },
  {
    "id": "1",
    "title": "Flutter awesome app",
    "description": "lorem ipsum dolor sit amet, consectetur",
    "picture_path":
        "https://images.unsplash.com/photo-1623743360975-7ce773e975ad?q=80&w=2304&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Fadhilah tri Santika",
      "picture_path":
          "https://images.unsplash.com/profile-1666967501957-3e99ca481d89image?bg=fff&crop=faces&dpr=2&h=32&w=32&auto=format&fit=crop&q=60&ixlib=rb-4.0.3"
    },
    "created_at": "2024-10-12 15:10:44"
  },
  {
    "id": "1",
    "title": "Flutter awesome app",
    "description": "lorem ipsum dolor sit amet, consectetur",
    "picture_path":
        "https://images.unsplash.com/photo-1565738156138-fb6feacc32f4?q=80&w=3164&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "author": {
      "name": "Nadea Wahyuni",
      "picture_path":
          "https://images.unsplash.com/profile-1527837996962-51b7f3ccc60b?bg=fff&crop=faces&dpr=2&h=32&w=32&auto=format&fit=crop&q=60&ixlib=rb-4.0.3"
    },
    "created_at": "2024-10-12 15:10:44"
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: const Text("Feeds App"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 0, 24, 40),
          actions: const [Icon(Icons.favorite)],
        ),
        body: ListView.builder(
          itemCount: feedData.length,
          itemBuilder: (ctx, index) {
            return CustomCard(
                feedData[index]['author']["name"],
                feedData[index]["created_at"],
                feedData[index]["picture_path"],
                feedData[index]['author']["picture_path"]);
          },
        ),
      ),
    );
  }
}

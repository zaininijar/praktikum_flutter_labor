import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';

List dataGallery = [
  {
    "id": 1,
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/2/1a7ceba8-33c1-4509-a436-1830867de08c.jpg",
  },
  {
    "id": 2,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/5/10/2b041006-0495-4e98-a3f1-ae577023baee.jpg.webp?ect=4g",
  },
  {
    "id": 3,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/9/11/1ae88303-37fc-42a4-8a83-fe19006d5fbb.jpg",
  },
  {
    "id": 4,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/7/15/e6a4c937-1c27-4209-b293-c6bd7d2cd04f.jpg",
  },
  {
    "id": 5,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/8/13/58824740/58824740_cb6000be-f9b0-44d8-a815-d44eac58f387_800_800.webp?ect=4g",
  },
  {
    "id": 6,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/hDjmkQ/2024/6/2/51e97720-0b47-4b7d-8ac7-228d3ac154a5.jpg.webp?ect=4g",
  },
  {
    "id": 7,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/6/1/43314915/43314915_08c2f67a-9c71-4c0b-bf31-fe989db30db1_640_640",
  },
  {
    "id": 8,
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/3/17/1bb0c5ba-1ee6-44ce-b9b1-a84b3c157162.jpg",
  },
  {
    "id": 9,
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/8/6569b260-a7eb-4a7c-9d59-5a33e834547e.jpg",
  },
  {
    "id": 10,
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2023/9/15/157182fc-7e74-4d3c-9d49-6abbfb67ae8c.jpg",
  }
];

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
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: List.generate(dataGallery.length, (index) {
            final item = dataGallery[index];
            return Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image.network(
                item['image'],
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ),
    );
  }
}

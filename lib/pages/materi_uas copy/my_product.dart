import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';

List dataProduct = [
  {
    "id": 1,
    "name": "Wireless Mouse",
    "description": "Ergonomic wireless mouse with adjustable DPI settings.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/2/1a7ceba8-33c1-4509-a436-1830867de08c.jpg",
    "price": 125.990,
  },
  {
    "id": 2,
    "name": "Mechanical Keyboard",
    "description": "RGB backlit mechanical keyboard with customizable keys.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/5/10/2b041006-0495-4e98-a3f1-ae577023baee.jpg.webp?ect=4g",
    "price": 189.990,
  },
  {
    "id": 3,
    "name": "Bluetooth Headphones",
    "description":
        "Noise-cancelling over-ear headphones with long battery life.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/9/11/1ae88303-37fc-42a4-8a83-fe19006d5fbb.jpg",
    "price": 159.990,
  },
  {
    "id": 4,
    "name": "Smartphone Stand",
    "description": "Adjustable smartphone stand compatible with all models.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/7/15/e6a4c937-1c27-4209-b293-c6bd7d2cd04f.jpg",
    "price": 110.990,
  },
  {
    "id": 5,
    "name": "USB-C Hub",
    "description": "Multi-port USB-C hub with HDMI, USB 3.0, and Ethernet.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/8/13/58824740/58824740_cb6000be-f9b0-44d8-a815-d44eac58f387_800_800.webp?ect=4g",
    "price": 134.990,
  },
  {
    "id": 6,
    "name": "Gaming Chair",
    "description":
        "Comfortable gaming chair with lumbar support and adjustable height.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/hDjmkQ/2024/6/2/51e97720-0b47-4b7d-8ac7-228d3ac154a5.jpg.webp?ect=4g",
    "price": 1149.990,
  },
  {
    "id": 7,
    "name": "External Hard Drive",
    "description": "1TB portable external hard drive with fast data transfer.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/6/1/43314915/43314915_08c2f67a-9c71-4c0b-bf31-fe989db30db1_640_640",
    "price": 149.990,
  },
  {
    "id": 8,
    "name": "Fitness Tracker",
    "description": "Water-resistant fitness tracker with heart rate monitor.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/3/17/1bb0c5ba-1ee6-44ce-b9b1-a84b3c157162.jpg",
    "price": 139.990,
  },
  {
    "id": 9,
    "name": "Smart LED Bulbs",
    "description":
        "Pack of 4 smart LED bulbs compatible with voice assistants.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/8/6569b260-a7eb-4a7c-9d59-5a33e834547e.jpg",
    "price": 129.990,
  },
  {
    "id": 10,
    "name": "Wireless Charger",
    "description":
        "Fast wireless charging pad compatible with multiple devices.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2023/9/15/157182fc-7e74-4d3c-9d49-6abbfb67ae8c.jpg",
    "price": 119.990,
  }
];

class ProductDetail extends StatelessWidget {
  const ProductDetail(
      this.id, this.name, this.description, this.image, this.price,
      {super.key});

  final int id;
  final String name;
  final String description;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Rp. $price',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              description,
              style: const TextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class MyProduct extends StatelessWidget {
  const MyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.only(top: 12),
        child: ListView.builder(
            itemCount: dataProduct.length,
            itemBuilder: (context, index) {
              final item = dataProduct[index];
              return ListProduct(
                item['id'],
                item['name'],
                item['description'],
                item['image'],
                item['price'],
              );
            }),
      ),
    );
  }
}

class ListProduct extends StatelessWidget {
  const ListProduct(
      this.id, this.name, this.description, this.image, this.price,
      {super.key});

  final int id;
  final String name;
  final String description;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetail(id, name, description, image, price);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 226, 205, 255),
          ),
          color: const Color.fromARGB(255, 248, 243, 255),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(image),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.star,
              color: Colors.deepPurpleAccent,
            )
          ],
        ),
      ),
    );
  }
}

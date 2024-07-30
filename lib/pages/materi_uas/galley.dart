import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';

List dataGallery = [
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
  },
  {
    "id": 11,
    "name": "Portable Speaker",
    "description": "Bluetooth portable speaker with deep bass and clear sound.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/1/12/f2c53523-b43e-42de-864a-de9cb72ab076.jpg.webp?ect=4g",
    "price": 89.990,
  },
  {
    "id": 12,
    "name": "Laptop Stand",
    "description": "Ergonomic laptop stand with adjustable height and angle.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/7/18/9cef21e9-8e1d-432c-a8f3-c08599b51584.jpg.webp?ect=4g",
    "price": 74.990,
  },
  {
    "id": 13,
    "name": "Webcam",
    "description": "1080p HD webcam with built-in microphone.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/1/21/b9947f2a-5d58-4886-89d7-1880fb7ab904.png.webp?ect=4g",
    "price": 59.990,
  },
  {
    "id": 14,
    "name": "Smart Plug",
    "description": "WiFi-enabled smart plug compatible with voice control.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/5/31/01ecdc6e-81b9-4b2d-a78b-bd8dc03049be.jpg.webp?ect=4g",
    "price": 49.990,
  },
  {
    "id": 15,
    "name": "Wireless Earbuds",
    "description": "True wireless earbuds with charging case.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/4/30/84a7d115-3e5c-4bf0-a36e-ae3724f90fb5.jpg.webp?ect=4g",
    "price": 79.990,
  },
  {
    "id": 16,
    "name": "Smartwatch",
    "description": "Smartwatch with fitness tracking and notifications.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/11/22/461d4f28-9465-464b-a0db-1cfd4fa7911f.jpg.webp?ect=4g",
    "price": 199.990,
  },
  {
    "id": 17,
    "name": "Wireless Gaming Mouse",
    "description": "High-precision wireless gaming mouse with RGB lighting.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/6/21/7556acf8-6a51-4059-b84e-48f560b92a3e.png.webp?ect=4g",
    "price": 99.990,
  },
  {
    "id": 18,
    "name": "Portable Monitor",
    "description": "15.6-inch portable monitor with USB-C and HDMI ports.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/1/31/cf828e89-e7ea-49fc-b331-63eef0f1b07b.jpg.webp?ect=4g",
    "price": 249.990,
  },
  {
    "id": 19,
    "name": "Graphic Tablet",
    "description": "Graphic drawing tablet with stylus pen.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/11/11/3d019213-f131-45e0-87e6-25336cee59fc.jpg.webp?ect=4g",
    "price": 129.990,
  },
  {
    "id": 20,
    "name": "Smart Thermostat",
    "description": "Smart thermostat with remote control via app.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/hDjmkQ/2024/7/5/41eb85a0-baaa-4cf0-aeaa-d25f2651966b.jpg.webp?ect=4g",
    "price": 149.990,
  },
  {
    "id": 21,
    "name": "VR Headset",
    "description": "Virtual reality headset with immersive experience.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/11/10/acb00792-a698-4055-ab30-ed3b03b1ab6c.png.webp?ect=4g",
    "price": 299.990,
  },
  {
    "id": 22,
    "name": "Electric Toothbrush",
    "description": "Electric toothbrush with multiple brushing modes.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/31/4a875474-ce68-45a7-a120-5a22c6f7ba1b.jpg.webp?ect=4g",
    "price": 59.990,
  },
  {
    "id": 23,
    "name": "Air Purifier",
    "description": "Air purifier with HEPA filter and quiet operation.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/3/5/d8cb0e01-01da-44ee-9cd5-14ccb3a648dc.jpg.webp?ect=4g",
    "price": 199.990,
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

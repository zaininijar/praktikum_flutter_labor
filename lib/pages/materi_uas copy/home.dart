import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/navbar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/components/sidebar.dart';
import 'package:praktikum_flutter_labor/pages/materi_uas/my_product.dart';

List listData = [
  {
    "id": "550",
    "title": "Keranjang",
    "icon": Icons.shopping_cart,
    "titleColor": Colors.indigoAccent,
    "iconColor": const Color.fromARGB(255, 0, 156, 161)
  },
  {
    "id": "913",
    "title": "Transaksi",
    "icon": Icons.assignment_outlined,
    "titleColor": const Color.fromARGB(255, 115, 77, 255),
    "iconColor": Colors.indigoAccent,
  },
  {
    "id": "878",
    "title": "Dikirim",
    "icon": Icons.delivery_dining,
    "titleColor": Colors.blueAccent,
    "iconColor": Colors.purpleAccent
  },
  {
    "id": "092",
    "title": "Wishlist",
    "icon": const IconData(0xf442,
        fontFamily: CupertinoIcons.iconFont,
        fontPackage: CupertinoIcons.iconFontPackage),
    "titleColor": Colors.purpleAccent,
    "iconColor": Colors.blueAccent
  },
  {
    "id": "158",
    "title": "Electronic",
    "icon": Icons.devices_outlined,
    "titleColor": const Color.fromARGB(255, 255, 68, 21),
    "iconColor": const Color.fromARGB(255, 0, 174, 151),
  },
  {
    "id": "507",
    "title": "Food",
    "icon": Icons.dining_outlined,
    "titleColor": const Color.fromARGB(255, 195, 0, 139),
    "iconColor": Colors.redAccent,
  },
];

List cartData = [
  {
    "id": 1,
    "name": "Wireless Mouse",
    "description": "Ergonomic wireless mouse with adjustable DPI settings.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/2/1a7ceba8-33c1-4509-a436-1830867de08c.jpg",
    "price": 125.990,
    "quantity": 5,
  },
  {
    "id": 2,
    "name": "Mechanical Keyboard",
    "description": "RGB backlit mechanical keyboard with customizable keys.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/5/10/2b041006-0495-4e98-a3f1-ae577023baee.jpg.webp?ect=4g",
    "price": 189.990,
    "quantity": 3,
  },
  {
    "id": 3,
    "name": "Bluetooth Headphones",
    "description":
        "Noise-cancelling over-ear headphones with long battery life.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/9/11/1ae88303-37fc-42a4-8a83-fe19006d5fbb.jpg",
    "price": 159.990,
    "quantity": 2,
  },
];

class ListProduct extends StatefulWidget {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;
  final int quantity;

  const ListProduct(this.id, this.name, this.description, this.image,
      this.price, this.quantity,
      {super.key});

  @override
  State<StatefulWidget> createState() => _ListProduct();
}

class _ListProduct extends State<ListProduct> {
  late int qty = widget.quantity;
  late double totalPrice = qty * widget.price;

  void _incrementCounter() {
    setState(() {
      qty++;
      totalPrice = qty * widget.price;
    });
  }

  void _decrementCounter() {
    setState(() {
      qty--;
      totalPrice = qty * widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetail(widget.id, widget.name, widget.description,
                  widget.image, widget.price);
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
              child: Image.network(widget.image),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Rp ${totalPrice.toStringAsFixed(totalPrice.truncateToDouble() == totalPrice ? 0 : 2)}",
                    style: const TextStyle(overflow: TextOverflow.fade),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                IconButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: _decrementCounter,
                  icon: Icon(
                    Icons.remove,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$qty',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: _incrementCounter,
                  icon: Icon(
                    Icons.add,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDetail extends StatelessWidget {
  const HomeDetail(
      this.id, this.title, this.icon, this.titleColor, this.iconColor,
      {super.key});

  final String id;
  final String title;
  final IconData icon;
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
        child: (title == 'Keranjang')
            ? ListView.builder(
                itemCount: cartData.length,
                itemBuilder: (context, index) {
                  final item = cartData[index];
                  return ListProduct(
                    item['id'],
                    item['name'],
                    item['description'],
                    item['image'],
                    item['price'],
                    item['quantity'],
                  );
                },
              )
            : Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: iconColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 148,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: titleColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList(
      this.id, this.title, this.icon, this.titleColor, this.iconColor,
      {super.key});

  final String id;
  final String title;
  final IconData icon;
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
              return HomeDetail(id, title, icon, titleColor, iconColor);
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
              icon,
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
                      "Selamat Datang di \n Toko Nadea",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.dashboard,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Belanja Sekarang",
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
                    listData[index]['icon'],
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

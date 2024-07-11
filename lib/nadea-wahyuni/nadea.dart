import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Product {
  final int id;
  final String name;
  final String picturePath;
  final double price;
  final int quantity;
  final double rating;

  Product(this.id, this.name, this.picturePath, this.price, this.quantity,
      this.rating);
}

final List<Product> products = [
  Product(
      1, "Laptop", 'https://picsum.photos/seed/7317/300/300', 10.50, 100, 4.2),
  Product(2, "Product B", 'https://picsum.photos/seed/3646/300/300', 20.30, 150,
      4.6),
  Product(3, "Product C", 'https://picsum.photos/seed/8566/300/300', 15.00, 200,
      3.8),
  Product(4, "Product D", 'https://picsum.photos/seed/0947/300/300', 8.25, 120,
      4.0),
  Product(5, "Product E", 'https://picsum.photos/seed/5186/300/300', 12.60, 180,
      4.5),
  Product(6, "Product F", 'https://picsum.photos/seed/3367/300/300', 25.00, 80,
      3.9),
  Product(7, "Product G", 'https://picsum.photos/seed/5715/300/300', 9.75, 110,
      4.1),
  Product(8, "Product H", 'https://picsum.photos/seed/8315/300/300', 22.40, 130,
      4.7),
  Product(9, "Product I", 'https://picsum.photos/seed/4259/300/300', 14.80, 170,
      3.7),
  Product(10, "Product J", 'https://picsum.photos/seed/1104/300/300', 18.50, 90,
      4.3),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            margin: const EdgeInsets.only(top: 8),
            child: Wrap(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(products[index].picturePath),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ListTile(
                    title: Text(products[index].name),
                    subtitle: Text(
                        "Price: \$${products[index].price} | Quantity: ${products[index].quantity} | Rating: ${products[index].rating}"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetail(product: products[index]),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(product.picturePath),
              ),
            ),
            Text("Product ID: ${product.id}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Name: ${product.name}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Price: \$${product.price}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Quantity: ${product.quantity}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Rating: ${product.rating}",
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

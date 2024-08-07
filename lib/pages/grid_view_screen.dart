import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/components/square_image_card.dart';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';
import 'package:praktikum_flutter_labor/services/api_service.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
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
        child: FutureBuilder<List<UnsplashImageModel>>(
          future: futureUnsplashImages,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Failed to load images'));
            } else {
              return GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                children: List.generate(snapshot.data!.length, (index) {
                  final image = snapshot.data![index];
                  return SquareImageCard(
                      image.altDescription, image.urls.small);
                }),
              );
            }
          },
        ),
      ),
    );
  }
}

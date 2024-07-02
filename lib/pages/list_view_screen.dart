import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/components/gallery_card.dart';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';
import 'package:praktikum_flutter_labor/services/api_service.dart';

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
        child: FutureBuilder<List<UnsplashImageModel>>(
          future: futureUnsplashImages,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Failed to load images'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final image = snapshot.data![index];
                  return GalleryCard(image.altDescription, image.urls.small);
                },
              );
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/components/gallery_card.dart';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';
import 'package:praktikum_flutter_labor/services/api_service.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewMasonryScreen extends StatefulWidget {
  const GridViewMasonryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GridViewMasonryScreenState createState() => _GridViewMasonryScreenState();
}

class _GridViewMasonryScreenState extends State<GridViewMasonryScreen> {
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
              return MasonryGridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
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

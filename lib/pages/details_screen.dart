import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';
import 'package:praktikum_flutter_labor/services/api_service.dart';
import 'package:remixicon/remixicon.dart';

class DetailScreen extends StatefulWidget {
  final String id;

  const DetailScreen({super.key, required this.id});

  @override
  _DetailScreen createState() => _DetailScreen(id: id);
}

class _DetailScreen extends State<DetailScreen> {
  final String id;

  late Future<UnsplashImageDetailModel> futureUnsplashDetail;

  @override
  void initState() {
    super.initState();
    futureUnsplashDetail = detailUnsplashImages(id);
  }

  _DetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Image"),
      ),
      body: FutureBuilder<UnsplashImageDetailModel>(
        future: futureUnsplashDetail,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Failed to load images'));
          } else {
            return Column(
              children: [
                Image.network(snapshot.data?.urls.full ?? ''),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Remix.heart_line),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(snapshot.data?.likes.toString() ?? '0')
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Remix.eye_line),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(snapshot.data?.views.toString() ?? '0')
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Remix.download_line),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(snapshot.data?.views.toString() ?? '0')
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        snapshot.data?.altDescription ?? '',
                        style: const TextStyle(fontSize: 32),
                      ),
                      Text(
                        snapshot.data?.description ?? '',
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

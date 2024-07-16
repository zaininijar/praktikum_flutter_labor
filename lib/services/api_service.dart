import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:praktikum_flutter_labor/models/unsplash_image_model.dart';

Future<List<UnsplashImageModel>> fetchUnsplashImages() async {
  final response = await http.get(
    Uri.parse(
        'https://api.unsplash.com/photos?client_id=sqW1wjr4g-aTDNRFTQz4iJcqn32cJEA7c09w6wmFjxI'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = json.decode(response.body);
    return jsonData.map((json) => UnsplashImageModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load images');
  }
}

Future<UnsplashImageDetailModel> detailUnsplashImages(String id) async {
  final response = await http.get(
    Uri.parse(
        'https://api.unsplash.com/photos/${id}?client_id=sqW1wjr4g-aTDNRFTQz4iJcqn32cJEA7c09w6wmFjxI'),
  );

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    return UnsplashImageDetailModel.fromJson(jsonData);
  } else {
    throw Exception('Failed to load images');
  }
}

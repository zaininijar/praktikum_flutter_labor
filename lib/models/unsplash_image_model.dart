class Urls {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;
  final String smallS3;

  const Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      raw: json['raw'],
      full: json['full'],
      regular: json['regular'],
      small: json['small'],
      thumb: json['thumb'],
      smallS3: json['small_s3'],
    );
  }
}

class UnsplashImageModel {
  final String id;
  final String altDescription;
  final Urls urls;

  const UnsplashImageModel({
    required this.id,
    required this.altDescription,
    required this.urls,
  });

  factory UnsplashImageModel.fromJson(Map<String, dynamic> json) {
    return UnsplashImageModel(
      id: json['id'],
      altDescription: json['alt_description'] ?? '',
      urls: Urls.fromJson(json['urls']),
    );
  }
}

class UnsplashImageDetailModel {
  final String id;
  final String? description;
  final String altDescription;
  final Urls urls;
  final int likes;
  final int? views;
  final int downloads;

  const UnsplashImageDetailModel({
    required this.id,
    required this.description,
    required this.altDescription,
    required this.urls,
    required this.likes,
    required this.views,
    required this.downloads,
  });

  factory UnsplashImageDetailModel.fromJson(json) {
    return UnsplashImageDetailModel(
      id: json['id'],
      likes: json['likes'],
      views: json['views'],
      downloads: json['downloads'],
      altDescription: json['alt_description'] ?? '',
      description: json['description'] ?? '',
      urls: Urls.fromJson(json['urls']),
    );
  }
}

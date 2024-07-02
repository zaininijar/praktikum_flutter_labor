import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  final String title;
  final String picturePath;

  const GalleryCard(this.title, this.picturePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(picturePath)),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

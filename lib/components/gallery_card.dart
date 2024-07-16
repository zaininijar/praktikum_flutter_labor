import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/details_screen.dart';

class GalleryCard extends StatelessWidget {
  final String id;
  final String title;
  final String picturePath;

  const GalleryCard(this.id, this.title, this.picturePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen(
                id: id,
              );
            },
          ),
        );
      },
      child: Container(
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
      ),
    );
  }
}

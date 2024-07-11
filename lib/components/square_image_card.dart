import 'package:flutter/material.dart';

class SquareImageCard extends StatelessWidget {
  final String title;
  final String picturePath;

  const SquareImageCard(this.title, this.picturePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(picturePath)),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}

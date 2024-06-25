import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String authorName;
  final String createdAt;
  final String picturePath;
  final String authorPicturePath;

  const CustomCard(
      this.authorName, this.createdAt, this.picturePath, this.authorPicturePath,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.pink),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      radius: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(authorPicturePath),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        createdAt,
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Image.network(picturePath),
          ),
          const Divider(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [Icon(Icons.thumb_up_alt_outlined), Text("Like")],
              ),
              Row(
                children: [Icon(Icons.comment), Text("Comment")],
              ),
              Row(
                children: [Icon(Icons.share), Text("Share")],
              ),
            ],
          ),
          const Divider(
            height: 20,
          ),
        ],
      ),
    );
  }
}

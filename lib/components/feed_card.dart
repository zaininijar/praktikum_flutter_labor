import 'package:flutter/material.dart';
import 'package:praktikum_flutter_labor/pages/details_screen.dart';
import 'package:remixicon/remixicon.dart';

class FeedCard extends StatelessWidget {
  final String id;
  final String authorName;
  final String createdAt;
  final String picturePath;
  final String authorPicturePath;

  const FeedCard(this.id, this.authorName, this.createdAt, this.picturePath,
      this.authorPicturePath,
      {super.key});

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
                        border: Border.all(width: 2, color: Colors.green),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(2),
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(picturePath),
              ),
            ),
            const Divider(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Remix.heart_3_line,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Remix.chat_3_line,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Comment",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Remix.share_line,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

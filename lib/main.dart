import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: const Text("Layout Flutter"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 255, 81, 217),
          actions: const [Icon(Icons.favorite)],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Wrap(spacing: 10, runSpacing: 20, children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 234, 251, 255),
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
                                child: Image.asset('assets/images/profile.jpg'),
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Zaini Nijar",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "5 second ago",
                                style: TextStyle(fontSize: 12),
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
                    child: Image.asset('assets/images/cover.png'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          Text("Like")
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.comment), Text("Comment")],
                      ),
                      Row(
                        children: [Icon(Icons.share), Text("Share")],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 234, 251, 255),
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
                                child: Image.asset('assets/images/profile.jpg'),
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Zaini Nijar",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "5 second ago",
                                style: TextStyle(fontSize: 12),
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
                    child: Image.asset('assets/images/cover.png'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          Text("Like")
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.comment), Text("Comment")],
                      ),
                      Row(
                        children: [Icon(Icons.share), Text("Share")],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 234, 251, 255),
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
                                child: Image.asset('assets/images/profile.jpg'),
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Zaini Nijar",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "5 second ago",
                                style: TextStyle(fontSize: 12),
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
                    child: Image.asset('assets/images/cover.png'),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          Text("Like")
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.comment), Text("Comment")],
                      ),
                      Row(
                        children: [Icon(Icons.share), Text("Share")],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

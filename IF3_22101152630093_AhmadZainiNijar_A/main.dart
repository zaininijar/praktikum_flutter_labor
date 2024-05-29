import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.density_medium),
          title: const Text("Medical Centre"),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 0, 188, 213),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/cover.png'),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                      "Selamat datang di aplikasi Medical Centre. disini anda bisa mengetahui tentang kesehatan"),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 15),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 188, 213),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/support.png'),
                          width: 85,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call Center",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              Text(
                                "Hubungi sekarang jika anda \n merasakan suatu gejala",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 188, 213),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image: AssetImage('assets/images/icon1.png'),
                              width: 100,
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 188, 213),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image: AssetImage('assets/images/profile.jpg'),
                              width: 100,
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 188, 213),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image: AssetImage('assets/images/icon2.png'),
                              width: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

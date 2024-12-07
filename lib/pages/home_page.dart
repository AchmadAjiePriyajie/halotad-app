import 'package:flutter/material.dart';
import 'package:halotad/service/user_service.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.teal],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Assalamualaikum',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Adi Purnama',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/adi.jpg'),
                        ),
                      ],
                    ),
                  ),
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search.....',
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  // Menu Icons
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green[100],
                              child: Icon(Icons.chat, color: Colors.green),
                            ),
                            SizedBox(height: 5),
                            Text('Chat', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green[100],
                              child: Icon(Icons.people, color: Colors.green),
                            ),
                            SizedBox(height: 5),
                            Text('Komunitas',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green[100],
                              child: Icon(Icons.article, color: Colors.green),
                            ),
                            SizedBox(height: 5),
                            Text('Artikel',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green[100],
                              child: Icon(Icons.help, color: Colors.green),
                            ),
                            SizedBox(height: 5),
                            Text('Konsultasi',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Info Kajian Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Info Kajian',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              KajianCard('images/ustadz.jpg'),
                              KajianCard('images/ustadz.jpg'),
                              KajianCard('images/ustadz.jpg'),
                              KajianCard('images/ustadz.jpg'),
                              KajianCard('images/ustadz.jpg'),
                              KajianCard('images/ustadz.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Ustadz Populer Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ustadz Populer',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: height * 0.27,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              UstadzCard(
                                image: 'images/ustadz.jpg',
                                name: 'Ustadz Abdul Somad',
                                topic: 'Ilmu Hadis & Fikih',
                              ),
                              UstadzCard(
                                image: 'images/ustadz.jpg',
                                name: 'Ustadz Hanan Attaki',
                                topic: 'Tafsir Al-Quran',
                              ),
                              UstadzCard(
                                image: 'images/ustadz.jpg',
                                name: 'Ustadz Hanan Attaki',
                                topic: 'Tafsir Al-Quran',
                              ),
                              UstadzCard(
                                image: 'images/ustadz.jpg',
                                name: 'Ustadz Hanan Attaki',
                                topic: 'Tafsir Al-Quran',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '',
          ),
        ],
      ),
    );
  }
}

// Widget untuk card Kajian
class KajianCard extends StatelessWidget {
  final String image;
  KajianCard(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Widget untuk card Ustadz
class UstadzCard extends StatelessWidget {
  final String image;
  final String name;
  final String topic;

  UstadzCard({required this.image, required this.name, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, height: 150, fit: BoxFit.cover),
          ),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(topic, style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Icon(Icons.star,
                  size: 15, color: index < 4 ? Colors.yellow : Colors.grey);
            }),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List cardList = [
    buildImageCard("images/projet/gestion.png", "java /swing"),
    buildImageCard("images/projet/imo.png", "symphony-php"),
    buildImageCard("images/projet/script.jpg", "python")
  ];
  List cardList1 = [
    buildImageCard("images/techno/html.png", "HTML5"),
    buildImageCard("images/techno/php.png", "symphony-php"),
    buildImageCard("images/techno/python.jpg", "python"),
    buildImageCard("images/techno/css.png", "CSS"),
    buildImageCard("images/techno/sql.jpg", "SQL"),
    buildImageCard("images/techno/flutter.png", "Flutter et Dart"),
    buildImageCard("images/techno/java.jpg", "jpg"),
  ];
  List cardList2 = [
    buildImageCard("images/services/mobil.jpg", "creation d'appli mobile"),
    buildImageCard("images/services/web.jpg", "creation d'aplli web"),
    buildImageCard("images/services/desktop.jpg", "creation d'appli Desktop"),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        drawer: dw(context),
        appBar: AppBar(
          title: const Text("MES SERVICES ET REALISATIONS"),
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  child: const Text(
                    "Mes realisations",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blueGrey),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    //height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {});
                    },
                  ),
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.blueGrey,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: const Text(
                    "technologies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blueGrey),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    //height: 200.0,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {});
                    },
                  ),
                  items: cardList1.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.blueGrey,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: const Text(
                    "Mes services",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blueGrey),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    //height: 200.0,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {});
                    },
                  ),
                  items: cardList2.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.blueGrey,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------items -----------
Widget buildImageCard(String img, String label) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          img,
          height: 240,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 16,
          right: 16,
          left: 16,
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 24,
            ),
          ),
        )
      ],
    ));

Widget buildImagesCard(String img, String label) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  img,
                  height: 240,
                  width: 175,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  img,
                  height: 240,
                  width: 175,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ));

Widget dw(context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text("Elhadji Malick Hane"),
          accountEmail: const Text("elhadjimalick hane2015@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                ? Colors.blue
                : Colors.white,
            child: const Text(
              "E",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListTile(
          title: const Text('Mes tectho et Realisation'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const About()));
          },
        ),
      ],
    ),
  );
}

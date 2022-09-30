import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipeScreen.dart';
import 'listecard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'parcoursEtRealisations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return RecipeScreen(
      recipe: Recipe(
          "GENIE LOGICILE ET SECURITE DES SYSTEME D'INFORMATION",
          "MALICK HANE",
          "images/moi.jpg",
          "Actuellement en fin d'études de LICENCE3 en GENIE LOGICIELE ET SECURITE DES  TECHNOLOGIES DE L’INFORMATION à ESSA - DAKAR, je suis à la recherche d'opportunités.",
          false,
          50),
    );
  }
}

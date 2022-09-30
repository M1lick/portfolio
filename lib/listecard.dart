import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Card listcard(String img, String label, String techno) {
  return Card(
    margin: EdgeInsets.all(8),
    elevation: 8,
    child: Row(
      children: [
        Image.asset(img, width: 150, height: 100, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(label,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Text(techno,
                  style: TextStyle(color: Colors.grey[500], fontSize: 16))
            ],
          ),
        )
      ],
    ),
  );
}
/*
List <Card> lst = [];
CarouselSlider instances;
Card a =
    listcard("images/gestion.png", "gestion de mangasin", "java /swing gui");
Card b = listcard("images/contact.png", " msv to csv", "Python /Scipt");

Card c = listcard("images/imo.png", "gestion imobilier ", "php/synfony");
*/
import 'package:flutter/material.dart';
import 'recipe.dart';
import 'favoriteWidget.dart';
import 'parcoursEtRealisations.dart';
import 'cartviste.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key, required this.recipe});
  final Recipe recipe;

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      widget.recipe.user,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Text(
                  "Apprenant chez XARALA",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          FavoriteWidget(
              isFavorited: widget.recipe.isFavorite,
              FavoriteCount: widget.recipe.favoriteCount),
        ],
      ),
    );

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child:
                _buildButtonColumn(Colors.blue, Icons.comment, "Me contacter"),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Cart()));
              });
            },
          ),
          InkWell(
            child: _buildButtonColumn(Colors.blue, Icons.add_business_outlined,
                "mes services et realisation"),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const About()));
              });
            },
          )
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        widget.recipe.description,
        style: const TextStyle(fontSize: 17),
        softWrap: true,
      ),
    );
    return Scaffold(
      drawer: dw(context),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.recipe.title),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage(widget.recipe.imageurl),
          ),
          titleSection,
          descriptionSection,
          buttonSection,
        ],
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Icon(icon, color: color)),
    Text(label,
        style:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color))
  ]);
}

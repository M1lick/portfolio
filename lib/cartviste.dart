import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(title: Text('CARTE DE VISITE')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                elevation: 2,
                shadowColor: Colors.white,
                child: Image.asset('images/carte visite_page-0001.jpg'))
          ],
        )));
  }
}

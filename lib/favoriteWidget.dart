import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavorited;
  final int FavoriteCount;

  const FavoriteWidget(
      {super.key, required this.isFavorited, required this.FavoriteCount});
  @override
  _FavoriteWidgetState createState() =>
      _FavoriteWidgetState(this.isFavorited, this.FavoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited;
  int _FavoriteCount;

  _FavoriteWidgetState(this._isFavorited, this._FavoriteCount);

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _FavoriteCount -= 1;
      } else {
        _isFavorited = true;
        _FavoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
        Text('$_FavoriteCount'),
      ],
    );
  }
}

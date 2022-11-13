import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductTile(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(child: Image.network(this.imageUrl));
  }
}

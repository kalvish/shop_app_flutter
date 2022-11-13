import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductTile extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductTile(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GestureDetector(
        onTap: () => context.go('/product_details/$title'),
        child: GridTile(
          footer: GridTileBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            trailing: IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.shopping_cart),
            ),
            backgroundColor: Colors.teal.shade200.withOpacity(0.5),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
              ),
            ),
          ),
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

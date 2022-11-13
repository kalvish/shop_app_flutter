import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Products.dart';
import 'package:shop_app/widgets/product_tile.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = context.watch<Products>();
    final productsStore = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: productsStore.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductTile(
            id: productsStore[index].id,
            title: productsStore[index].title,
            imageUrl: productsStore[index].imageUrl);
      },
    );
  }
}

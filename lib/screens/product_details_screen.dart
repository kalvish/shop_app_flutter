import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/Products.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productId;
  const ProductDetailsScreen({Key? key, required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context
        .watch<Products>()
        .items
        .firstWhere((element) => element.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewPortConstrains) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewPortConstrains.maxHeight),
              child: ProductDetailsContent(product: product),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Text(
            product.description,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 24.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Card(
            color: Theme.of(context).colorScheme.surfaceVariant,
            elevation: 8.0,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            product.description,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

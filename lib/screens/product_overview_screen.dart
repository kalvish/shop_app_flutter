import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Products.dart';
import '../models/product.dart';
import '../widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () => context.read<Products>().addItem(
                    Product(
                      id: 'p5',
                      title: 'New Item',
                      description: 'Prepare any meal you want.',
                      price: 49.99,
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
                    ),
                  ),
              child: const Icon(Icons.add))
        ],
        title: Text(
          'Shop app',
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              color: Colors.teal.shade100),
        ),
      ),
      body: ProductsGrid(),
    );
  }
}

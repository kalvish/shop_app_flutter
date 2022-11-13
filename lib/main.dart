import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_overview_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
          fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
      home: ProductOverviewScreen(),
    );
  }
}

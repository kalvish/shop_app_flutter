import 'package:flutter/material.dart';
import 'package:shop_app/providers/Products.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
      ],
      child: const ShopApp(),
    ),
  );
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/providers/Products.dart';
import 'package:shop_app/screens/product_details_screen.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
      ],
      child: ShopApp(),
    ),
  );
}

class ShopApp extends StatelessWidget {
  ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
          fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
    );
  }

  final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            ProductOverviewScreen(),
        routes: <GoRoute>[
          GoRoute(
              path: 'product_details/:productId',
              builder: (BuildContext context, GoRouterState state) {
                final String productId = state.params['productId']!;
                return ProductDetailsScreen(productId: productId);
              },
              routes: <GoRoute>[]),
        ]),
  ]);
}

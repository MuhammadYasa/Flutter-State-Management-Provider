import 'package:flutter/material.dart';
import 'package:flutter_35_state_management_provider/providers/all_products.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

// 12.32   https://www.youtube.com/watch?v=9Mv1gSrXrlg&list=PL7jdfftn7HKsfTtv8FOaTbLIf7feiQTRu&index=36

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          // pengganti accent color
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber),
          // accentColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

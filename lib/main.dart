import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import 'package:shop_flutter_app/screens/products_overview_screen.dart';
import 'package:shop_flutter_app/screens/product_detail_screen.dart';
import 'package:shop_flutter_app/providers/products_provider.dart';
import 'package:shop_flutter_app/providers/cart.dart';
import 'package:shop_flutter_app/screens/cart_screen.dart';
import './providers/orders.dart';
import 'package:shop_flutter_app/screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: 'OpenSans',
            colorSchemeSeed: Color.fromARGB(240, 255, 0, 0),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Color.fromARGB(240, 0, 0, 0),
            appBarTheme: const AppBarTheme(
              foregroundColor: Colors.white,
              shadowColor: Colors.black,
              backgroundColor: Colors.red,
              elevation: 4,
            )),
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KASAP'),
      ),
      body: Center(
        child: Text('Build a shop'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

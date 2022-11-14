import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import 'package:shop_flutter_app/screens/products_overview_screen.dart';
import 'package:shop_flutter_app/screens/product_detail_screen.dart';
import 'package:shop_flutter_app/providers/products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Roboto',
          colorSchemeSeed: Color.fromARGB(240, 255, 0, 0),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color.fromARGB(240, 37, 36, 36),

          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
            backgroundColor: Colors.red,
            elevation: 4,
          )
        ),

        debugShowCheckedModeBanner: false,
        title: 'Shop',
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
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

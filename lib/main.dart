import 'package:flutter/material.dart';
import 'package:shop_flutter_app/widgets/product_item.dart';
import './screens/products_overview_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData.dark(),
      home: ProductsOverviewScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: Center(
        child: Text('Build a shop'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

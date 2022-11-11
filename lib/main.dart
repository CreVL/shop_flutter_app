import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(240, 255, 0, 0),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(240, 37, 36, 36),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        )
      ),

      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: ProductsOverviewScreen(),
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

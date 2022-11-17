import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../providers/products_provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  //
  // final double price;
  // final String title;
  //
  // ProductDetailsScreen(this.title, this.price );

  static const rouuteName = '/product-detail';


  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute
        .of(context)!
        .settings
        .arguments as String; // id
    final loadedProduct = Provider.of<Products>(context, listen: false)
        .findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title,),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(loadedProduct.imageUrl,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text('\Р${loadedProduct.price}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,),
            )
          ],
        ),
      ),

    );
  }
}

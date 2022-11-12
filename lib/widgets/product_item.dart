import 'dart:ffi';

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        header: Text(
          price.toString(),
          textAlign: TextAlign.center,
          textScaleFactor: 1.2,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            color: Colors.white,
            // color: Color.fromARGB(240, 255, 0, 0),
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),

          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

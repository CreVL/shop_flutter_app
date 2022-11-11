import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black45,

        leading: IconButton(
          color: Color.fromARGB(240, 255, 0, 0),
          icon: Icon(Icons.favorite),
          onPressed: () {  },
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        trailing: IconButton(
          icon: Icon(
              Icons.shopping_cart),
          color: Color.fromARGB(240, 255, 0, 0),
          onPressed: () {  },
        ),
      ),
    );
  }
}

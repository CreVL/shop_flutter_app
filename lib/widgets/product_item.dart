import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../providers/product.dart';
import '../screens/product_detail_screen.dart';


class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // final double price;
  //
  // ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                  ProductDetailsScreen.routeName,
                  arguments: product.id);
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),),
          header: Text(
            product.price.toString(),
            textAlign: TextAlign.center,
            textScaleFactor: 1.2,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: Consumer<Product>(
              builder: (ctx, product, _) =>IconButton(
              color: Color.fromARGB(240, 255, 0, 0),
              icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () {
                product.switchFavoriteStatus();
              },
            ),
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),

            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Color.fromARGB(240, 255, 0, 0),
              onPressed: () {
                cart.addItem(product.id, product.price, product.title);
              },
            ),
          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_flutter_app/screens/edit_product_screen.dart';

class UserProductItem extends StatelessWidget {
  UserProductItem(this.id, this.title, this.imageUrl);

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EditProductScreen.routeName, arguments: id);
              },
              icon: Icon(
                Icons.mode_edit_outline_rounded,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_rounded),
              color: Theme.of(context).colorScheme.error,
            ),
          ],
        ),
      ),
    );
  }
}

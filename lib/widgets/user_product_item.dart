import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  UserProductItem(this.title, this.imageUrl);

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
              onPressed: () {},
              icon: Icon(Icons.mode_edit_outline_rounded,),
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

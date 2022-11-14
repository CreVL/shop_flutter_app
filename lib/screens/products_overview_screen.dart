import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';


class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KASAP'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int selectedValue){
              print(selectedValue);
            },
            icon: Icon(Icons.more_vert,),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Любимое'),value: 0,),
              PopupMenuItem(child: Text('Все'),value: 1,),
          ],),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}


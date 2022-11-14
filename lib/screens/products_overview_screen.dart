import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';


enum FilterOptions{
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KASAP'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue){
              setState(() {
                if (selectedValue == FilterOptions.Favorites){
                  _showOnlyFavorites = true;
                }else{
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert,),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Любимое'),value: FilterOptions.Favorites,),
              PopupMenuItem(child: Text('Все'),value: FilterOptions.All,),
          ],),
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}


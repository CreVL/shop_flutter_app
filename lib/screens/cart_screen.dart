import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter_app/providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';



  @override
  Widget build(BuildContext context) {
    final cart = Provider.of <Cart> (context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('Всего:', style: TextStyle(fontSize: 20),),
                Spacer(),
                Chip(label: Text('\Р${cart.totalAmount}',
                  style: TextStyle(color: Color.fromARGB(240, 255, 255, 255)),),
                  backgroundColor: Color.fromARGB(240, 255, 0, 0),  ),
                  TextButton(child: Text('Заказать', style: TextStyle(fontSize: 18,color: Color.fromARGB(240, 255, 255, 255) ),), onPressed: (){}, ),
              ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(itemCount: cart.items.length, itemBuilder: (ctx, i) => ,),)
        ],
      ),
    );
  }
}

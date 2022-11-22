import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cart_item.dart';
import '../providers/cart.dart' show Cart;
import '../providers/orders.dart';


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
                Chip(label: Text('\Р${cart.totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(color: Color.fromARGB(240, 255, 255, 255)),),
                  backgroundColor: Color.fromARGB(240, 0, 0, 0),  ),
                  TextButton(
                    child: Text('Заказать',
                    style: TextStyle(fontSize: 18,color: Color.fromARGB(240, 255, 255, 255)
                    ),
                    ),
                    onPressed: (){
                      Provider.of<Orders>(context, listen: false).addOrder(
                          cart.items.values.toList(),
                          cart.totalAmount);
                      cart.clear();
                    }, ),
              ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(itemCount: cart.items.length,
            itemBuilder: (ctx, i) => CartItem(
                cart.items.values.toList()[i].id,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].title),),)
        ],
      ),
    );
  }
}

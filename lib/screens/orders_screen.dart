import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_flutter_app/providers/orders.dart' show Orders;
import 'package:shop_flutter_app/widgets/order_item.dart';

import '../widgets/app_box.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderDate = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ваши заказы'),
      ),
      drawer: AppBox(),
      body: ListView.builder(
        itemCount: orderDate.orders.length,
      itemBuilder: (ctx, i) => OrderItem(orderDate.orders[i]),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_flutter_app/screens/orders_screen.dart';

class AppBox extends StatelessWidget {
  const AppBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(title: Text('Меню'),
          automaticallyImplyLeading: false,),
          Divider(),
          ListTile(leading: Icon(Icons.shop),
            title: Text("KASAP"),
            onTap: (){
            Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(leading: Icon(Icons.payment),
            title: Text("Ваши заказы"),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_flutter_app/models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 520,
      imageUrl: 'https://i.ibb.co/kDFhN9g/safa.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Люля кебаб из баранины',
      description: 'Натуральаня барананина на шпашке',
      price: 300,
      imageUrl:
          'https://ic.wampi.ru/2022/11/10/Screenshot_22b83dfc2e46d5031.png',
    ),
    Product(
      id: 'p3',
      title: 'Котлеты из говядины',
      description: 'Натуральное мясо говядины ломтиками',
      price: 350,
      imageUrl:
          'https://im.wampi.ru/2022/11/10/Screenshot_4ce0ac890befe9206.png',
    ),
    Product(
      id: 'p4',
      title: 'Нарезка из ягненка',
      description: 'Натуральное ягненка ломтиками',
      price: 450,
      imageUrl:
          'https://ie.wampi.ru/2022/11/10/Screenshot_3e73acb2c61fcf614.png',
    ),
    Product(
      id: 'p5',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 350,
      imageUrl:
          'https://ic.wampi.ru/2022/11/10/Screenshot_5e9fcd70ee33ceef2.png',
    ),
    Product(
      id: 'p6',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 700,
      imageUrl: 'https://ie.wampi.ru/2022/11/10/Screenshot_6.png',
    ),
    Product(
      id: 'p7',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 550,
      imageUrl: 'https://im.wampi.ru/2022/11/10/Screenshot_7.png',
    ),
    Product(
      id: 'p8',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 600,
      imageUrl: 'https://ic.wampi.ru/2022/11/10/Screenshot_8.png',
    ),
    Product(
      id: 'p9',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 450,
      imageUrl: 'https://ic.wampi.ru/2022/11/10/Screenshot_9.png',
    ),
    Product(
      id: 'p10',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 700,
      imageUrl:
          'https://ie.wampi.ru/2022/11/10/Screenshot_10a14a6c84b64cd9a8.png',
    ),
    Product(
      id: 'p11',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 750,
      imageUrl: 'https://im.wampi.ru/2022/11/10/Screenshot_11.png',
    ),
    Product(
      id: 'p11',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 700,
      imageUrl: 'https://ic.wampi.ru/2022/11/10/Screenshot_12.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KASAP'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl,
            loadedProducts[i].price,),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

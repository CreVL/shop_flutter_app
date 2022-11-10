import 'package:flutter/material.dart';
import 'package:shop_flutter_app/models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 500,
      imageUrl: 'https://ie.wampi.ru/2022/11/10/MYSO2.png',
    ),
    Product(
      id: 'p2',
      title: 'Люля кебаб из баранины',
      description: 'Натуральаня барананина на шпашке',
      price: 300,
      imageUrl: 'https://im.wampi.ru/2022/11/10/IMG_2499.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Котлеты из говядины',
      description: 'Натуральное мясо говядины ломтиками',
      price: 500,
      imageUrl: 'https://i.ibb.co/23rX9x6/image-2022-11-10-18-38-07.png',
    ),
    Product(
      id: 'p4',
      title: 'Нарезка из ягненка',
      description: 'Натуральное ягненка ломтиками',
      price: 450,
      imageUrl: 'https://ie.wampi.ru/2022/11/10/IMG_2487--KOPIY.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 500,
      imageUrl: 'https://im.wampi.ru/2022/11/10/IMG_2496.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 500,
      imageUrl: 'https://ic.wampi.ru/2022/11/10/MYSO1.png',
    ),
    Product(
      id: 'p7',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 500,
      imageUrl: 'https://ie.wampi.ru/2022/11/10/IMG_2488.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Шашлык из шейки ягненка',
      description: 'Натуральное мясо с шейки ягненка на шпашке',
      price: 500,
      imageUrl: 'https://ie.wampi.ru/2022/11/10/IMG_2488.jpg',
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
            loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_flutter_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if(_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  // void showFavoritesOnly(){
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }
  // void showAll(){
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct(Product product) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl);
    _items.add(newProduct);
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final productIndex = _items.indexWhere((product) => product.id == id);
    if (productIndex >= 0) {
      _items[productIndex] = newProduct;
      notifyListeners();
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((product) => product.id == id);
    notifyListeners();
  }
}

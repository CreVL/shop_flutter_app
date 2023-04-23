import 'package:flutter/material.dart';
import 'package:shop_flutter_app/providers/product.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  static const routeName = '/edit-product';

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final priceFocus = FocusNode();
  final descriptionFocus = FocusNode();
  final imageUrlController = TextEditingController();
  final imageFocus = FocusNode();
  final formKey = GlobalKey<FormState>();
  var editedProduct =
      Product(id: '', title: '', description: '', price: 0, imageUrl: '');

  @override
  void initState() {
    imageFocus.addListener(updateImageUrl);
    super.initState();
  }

  void updateImageUrl() {
    if (!imageFocus.hasFocus) {
      if ((!imageUrlController.text.startsWith('http') &
              !imageUrlController.text.startsWith('https')) ||
          (!imageUrlController.text.endsWith('.png') &&
              !imageUrlController.text.endsWith('.jpg') &&
              !imageUrlController.text.endsWith('.jpeg'))) {
        return;
      }
      setState(() {});
    }
  }

  void saveForm() {
    final isValid = formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    formKey.currentState?.save();
    print(editedProduct.title);
    print(editedProduct.description);
    print(editedProduct.price);
    print(editedProduct.imageUrl);
  }

  @override
  void dispose() {
    imageFocus.removeListener(updateImageUrl);
    priceFocus.dispose();
    descriptionFocus.dispose();
    imageUrlController.dispose();
    imageFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Правка позиции'),
        actions: <Widget>[
          IconButton(onPressed: saveForm, icon: Icon(Icons.save))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Название',
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(priceFocus);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Введите название';
                  }
                  return null;
                },
                onSaved: (value) {
                  editedProduct = Product(
                      title: value.toString(),
                      price: editedProduct.price,
                      description: editedProduct.description,
                      imageUrl: editedProduct.imageUrl,
                      id: null.toString());
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Цена',
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                focusNode: priceFocus,
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(descriptionFocus);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Введите название';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Введите корректную цену';
                  }
                  if (double.parse(value) <= 0) {
                    return 'Цена не может быть отрицательной';
                  }
                  return null;
                },
                onSaved: (value) {
                  editedProduct = Product(
                      title: editedProduct.title,
                      price: double.parse(value!),
                      description: editedProduct.description,
                      imageUrl: editedProduct.imageUrl,
                      id: null.toString());
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Описание',
                ),
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                focusNode: descriptionFocus,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Введите описание';
                  }
                  if (value.length < 10) {
                    return 'Слишком короткое описание';
                  }
                  return null;
                },
                onSaved: (value) {
                  editedProduct = Product(
                      title: editedProduct.title,
                      price: editedProduct.price,
                      description: value.toString(),
                      imageUrl: editedProduct.imageUrl,
                      id: null.toString());
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.red)),
                    child: Uri.tryParse(imageUrlController.text)?.isAbsolute ==
                            true
                        ? FittedBox(
                            child: Image.network(
                              imageUrlController.text,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const Center(
                            child: const Text(
                            'URL',
                            style: TextStyle(color: Colors.grey),
                          )),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Адрес изоображения'),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: imageUrlController,
                      focusNode: imageFocus,
                      onFieldSubmitted: (_) {
                        saveForm();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Введите URL продукта';
                        }
                        if (!value.startsWith('http') &
                            !value.startsWith('https')) {
                          return 'Введите корректный URL';
                        }
                        if (!value.endsWith('.png') &&
                            !value.endsWith('.jpg') &&
                            !value.endsWith('.jpeg')) {
                          return 'Введите URL допустимого изображения';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        editedProduct = Product(
                            title: editedProduct.title,
                            price: editedProduct.price,
                            description: editedProduct.description,
                            imageUrl: value.toString(),
                            id: null.toString());
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

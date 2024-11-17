import 'package:flutter/material.dart';
import 'package:mini_ecommerce/models/product_model.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
        name: 'Product 1',
        price: 19.99,
        description: 'Item description',
        imagePath: 'assets/hoodie.avif'),
    Product(
        name: 'Product 2',
        price: 20.99,
        description: 'Item description',
        imagePath: 'assets/sneakers.avif'),
    Product(
        name: 'Product 3',
        price: 50.19,
        description: 'Item description',
        imagePath: 'assets/glasses.avif'),
    Product(
        name: 'Product 4',
        price: 99.99,
        description: 'Item description',
        imagePath: 'assets/headphones.avif'),
  ];
  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}

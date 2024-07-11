import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Max 90',
      imagePath: 'lib/images/item_1.jpg',
      price: 120,
      description:
          'The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole.',
    ),
    Shoe(
      name: 'Nike Air Max 95',
      imagePath: 'lib/images/item_2.jpg',
      price: 170,
      description:
          'The Nike Air Max 95 made its mark as the first shoe to include visible Nike Air cushioning in the forefoot.',
    ),
    Shoe(
      name: 'Nike Air Max 97',
      imagePath: 'lib/images/item_3.jpg',
      price: 180,
      description:
          'The Nike Air Max 97 keeps a sneaker icon going strong with the same design details that made it.',
    ),
    Shoe(
      name: 'Nike Air Max 270',
      imagePath: 'lib/images/item_4.jpg',
      price: 150,
      description:
          'The Nike Air Max 270 delivers visible cushioning under every step. Updated for modern comfort.',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

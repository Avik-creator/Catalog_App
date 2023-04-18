import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    required this.catalog,
    super.key,
  });
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool inCart = _cart.items.contains(catalog);
    return ElevatedButton(
        onPressed: () {
          if (!inCart) {
            inCart = inCart.toggle();
            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: inCart ? Icon(Icons.done) : Icon(Icons.add_shopping_cart));
  }
}

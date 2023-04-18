import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // Making a Singleton
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  // Catalog Field
  late CatalogModel _catalog;

  final List<int> _itemIDs = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Items in the Cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getById(id)).toList();

  // Get Total Price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // Adding Items
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}

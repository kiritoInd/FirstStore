import 'package:easyshop_app/src/features/shopingcart/views/widgets/ShoppingCartItemList.dart';
import 'package:flutter/material.dart';
import '../../../../Models/catalog.dart';

class ShoppingCart {
  static List<Item> items = [];
  static ValueNotifier<List<Item>> itemsNotifier =
      ValueNotifier<List<Item>>(items);
  static ValueNotifier<bool> cartChangeNotifier = ValueNotifier<bool>(false);
  static ValueNotifier<double> totalPriceNotifier = ValueNotifier<double>(0);

  static void addItem(Item item) {
    if (!isItemAdded(item)) {
      items.add(item);
      itemsNotifier.value = items; // Notify listeners about the change
      cartChangeNotifier.value =
          !cartChangeNotifier.value; // Trigger a change in the cart
      calculateTotalPrice(); // Recalculate the total price
    }
  }

  static void removeItem(Item item) {
    items.remove(item);
    itemsNotifier.value = items; // Notify listeners about the change
    cartChangeNotifier.value =
        !cartChangeNotifier.value; // Trigger a change in the cart
    calculateTotalPrice(); // Recalculate the total price
  }

  static bool isItemAdded(Item item) {
    return items.contains(item);
  }

  static void calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in items) {
      int quantity = ShoppingCartItemList.getItemQuantity(item);
      totalPrice += item.price * quantity;
    }
    totalPriceNotifier.value =
        totalPrice; // Notify listeners about the updated total price
  }
}

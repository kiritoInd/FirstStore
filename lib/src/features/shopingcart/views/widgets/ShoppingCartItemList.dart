import 'package:easyshop_app/src/Models/catalog.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'CartList.dart';

class ShoppingCartItemList extends StatefulWidget {
  const ShoppingCartItemList({Key? key}) : super(key: key);

  @override
  _ShoppingCartItemListState createState() => _ShoppingCartItemListState();

  // Declare a static method to get the item quantity
  static int getItemQuantity(Item item) {
    return _ShoppingCartItemListState.itemQuantities[item] ?? 1;
  }
}

class _ShoppingCartItemListState extends State<ShoppingCartItemList> {
  static Map<Item, int> itemQuantities = {};

  @override
  void initState() {
    super.initState();
    itemQuantities = ShoppingCart.items.fold<Map<Item, int>>(
      {},
      (map, item) {
        map[item] = 1;
        return map;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ShoppingCart.cartChangeNotifier,
      builder: (context, _, __) {
        if (ShoppingCart.items.isEmpty) {
          // Show a message when the cart is empty
          return Center(
            child: Container(
                height: 250,
                width: 400,
                child: "Add Item to the list"
                    .text
                    .center
                    .bold
                    .color(ELightGreen)
                    .xl
                    .make()
                    .pOnly(top: 100, left: 15)),
          );
        } else {
          return ListView.builder(
            itemCount: ShoppingCart.items.length,
            itemBuilder: (context, index) {
              final item = ShoppingCart.items[index];
              final quantity = itemQuantities[item] ?? 1;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: EsearchBGcolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '₹${item.price}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(
                          width: 140,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ).pOnly(top: 8, left: 8, bottom: 8),
                  ),
                  Container(
                    width: 85,
                    height: 30,
                    decoration: BoxDecoration(
                      color: EstartBackgroundColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 20,
                          child: IconButton(
                            icon: const Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                              size: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) {
                                  itemQuantities[item] = quantity - 1;
                                } else {
                                  itemQuantities.remove(item);
                                  ShoppingCart.removeItem(item);
                                }
                                ShoppingCart.calculateTotalPrice();
                              });
                            },
                          ),
                        ).pOnly(right: 8),
                        // Display the quantity
                        SizedBox(
                          width: 20,
                          child: Text(
                            quantity.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 30,
                          child: IconButton(
                            icon: const Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                itemQuantities[item] = quantity + 1;
                                ShoppingCart.calculateTotalPrice();
                              });
                            },
                          ),
                        ).pOnly(right: 5),
                      ],
                    ),
                  ),
                ],
              ).pOnly(left: 6, right: 6, top: 10, bottom: 10);
            },
          ).pOnly(top: 10, bottom: 10);
        }
      },
    );
  }
}

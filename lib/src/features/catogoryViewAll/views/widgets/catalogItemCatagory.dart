import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import '../../../../Models/catalog.dart';
import '../../../../res/color_Pallet.dart';
import '../../../shopingcart/views/widgets/CartList.dart';
import 'catalogImageCatagory.dart';

class CatalogItemCatagory extends StatelessWidget {
  final Item catalog;
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const CatalogItemCatagory({Key? key, required this.catalog, this.onItemAdded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 150, // Set the desired height here
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            CatalogImageCatagory(
              image: catalog.image,
            ),
            SizedBox(
              height: 55,
              width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 50,
                        child: catalog.name.text.semiBold.sm
                            .color(Vx.black)
                            .make(),
                      ),
                      "₹${catalog.price}".text.sm.color(Vx.black).make(),
                    ],
                  ),
                  RecButton(
                    catalog: catalog,
                    onItemAdded: onItemAdded, // Pass the callback
                  ),
                ],
              ),
            ).pOnly(top: 9),
          ],
        ),
      ).p4(),
    );
  }
}

class RecButton extends StatelessWidget {
  final Item catalog;
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const RecButton({Key? key, required this.catalog, this.onItemAdded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isItemAdded =
        ShoppingCart.isItemAdded(catalog); // Check if the item is already added

    return Container(
      width: 104,
      height: 30,
      decoration: const BoxDecoration(
        color: ELightGreen,
      ),
      child: TextButton(
        onPressed: () {
          if (!isItemAdded) {
            ShoppingCart.addItem(catalog);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${catalog.name} added to the shopping cart'),
              ),
            );
            if (onItemAdded != null) {
              onItemAdded!(); // Call the onItemAdded callback
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('${catalog.name} is already in the shopping cart'),
              ),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ("Add To Cart").text.color(Colors.white).sm.make(),
            const Icon(
              CupertinoIcons.add_circled_solid,
              size: 15,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../Models/catalog.dart';
import '../../../../res/color_Pallet.dart';
import '../../../shopingcart/views/widgets/CartList.dart';

class AddItemButton extends StatelessWidget {
  final Item catalog;
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const AddItemButton({Key? key, required this.catalog, this.onItemAdded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isItemAdded =
        ShoppingCart.isItemAdded(catalog); // Check if the item is already added

    return Container(
      width: 76,
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                50), // Set a higher border radius for a more circular shape
          ),
          shadowColor: Colors.white,
          backgroundColor: ELightGreen,
        ),
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
            const Text(
              "Add",
              style: TextStyle(fontSize: 14),
            ),
            // Adjust the font size and spacing
            Transform.translate(
              offset: const Offset(6, 0),
              child: const Icon(
                CupertinoIcons.add,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

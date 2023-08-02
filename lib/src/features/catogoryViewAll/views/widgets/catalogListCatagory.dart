import 'package:easyshop_app/src/Models/catalog.dart';
import 'package:easyshop_app/src/features/itemsDesc/views/ItemDetailsPage.dart';
import 'package:flutter/material.dart';
import 'catalogItemCatagory.dart';

class CatalogListCatagory extends StatelessWidget {
  const CatalogListCatagory({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        childAspectRatio: 3 / 3.5, // Width-to-height ratio of each item
      ),
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailPage(
                  catalog: catalog,
                ),
              ),
            );
          },
          child: CatalogItemCatagory(
            catalog: catalog,
            onItemAdded: () {
              // Triggered when an item is added
              // Update the state of ShoppingCartWidget here
              // ignore: invalid_use_of_protected_member
              (context as Element).reassemble();
            },
          ),
        );
      },
    );
  }
}

import 'package:easyshop_app/src/features/itemsDesc/views/ItemDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../Models/catalog.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  final String searchQuery; // Add a parameter for the search query

  const CatalogList({required this.searchQuery, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filter the products based on the search query
    final filteredItems = CatalogModel.items
        .where((item) =>
            item.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Container(
      constraints: const BoxConstraints(
        maxWidth: 392.5,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          final catalog = filteredItems[index];
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
            child: CatalogItem(
              catalog: catalog,
              onItemAdded: () {
                // (context as Element).reassemble();
              },
            ),
          );
        },
      ).p8(),
    );
  }
}

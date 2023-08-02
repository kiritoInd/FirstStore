import 'package:easyshop_app/src/features/catogoryViewAll/views/widgets/CatalogListCatagory.dart';
import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:flutter/material.dart';

import '../../catalog/views/product_card.dart';
import '../../catalog/views/testProduct.dart';

class FurnitureViewAll extends StatelessWidget {
  const FurnitureViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarHome(
        title: "Furniture",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: const SingleChildScrollView(
        // child: ProductCard(style: CatalogListCatagory()),
        child: TestProductCard(),
      ),
    );
  }
}

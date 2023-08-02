import 'package:easyshop_app/src/features/catalog/views/testProduct.dart';
import 'package:easyshop_app/src/features/catogoryViewAll/views/widgets/catalogListCatagory.dart';
import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:flutter/material.dart';

import '../../catalog/views/product_card.dart';
import '../../catalog/views/widgets/catalog_List.dart';

class ElectronicsViewAll extends StatelessWidget {
  const ElectronicsViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarHome(
        title: "Electronics",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: const SingleChildScrollView(
        // child: ProductCard(style: CatalogListCatagory()
        child: TestProductCard(),
      ),
    );
  }
}

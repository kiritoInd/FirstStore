import 'package:easyshop_app/src/features/catalog/views/testProduct.dart';
import 'package:easyshop_app/src/features/home/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../catalog/views/widgets/catalog_List.dart';
import '../home/views/widgets/CustomAppbarHome.dart';
import '../catalog/views/product_card.dart';
import '../home/views/widgets/customAppBarWidget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        onIconPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 215,
          height: 23,
          child: ("Favorites").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              // child: ProductCard(style: CatalogList()),
              child: TestProductCard(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:easyshop_app/src/features/catogory/views/widgets/catagoryProductSlider.dart';
import 'package:easyshop_app/src/features/catogory/views/widgets/customImageCallback.dart';
import 'package:easyshop_app/src/features/catogory/views/widgets/headingWithViewAll.dart';
import 'package:easyshop_app/src/features/catogoryViewAll/views/electronics.dart';
import 'package:easyshop_app/src/features/catogoryViewAll/views/fruitsnveg.dart';
import 'package:easyshop_app/src/features/catogoryViewAll/views/furniture.dart';
import 'package:easyshop_app/src/features/catogoryViewAll/views/grocery.dart';
import 'package:easyshop_app/src/features/home/views/Home.dart';
import 'package:easyshop_app/src/features/home/views/widgets/customAppBarWidget.dart';
import 'package:easyshop_app/src/res/lists.dart';
import 'package:easyshop_app/src/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatogoryPage extends StatelessWidget {
  const CatogoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        onIconPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 245,
          height: 25,
          child: ("Catagory products").text.xl.bold.color(Colors.black).make(),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          HeadingWithViewAll(
            text: furniture,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FurnitureViewAll()),
              );
            },
          ),
          const SizedBox(height: 14),
          CatagoryProductSlider(
            categoryList: categoryProductList1,
            imageCallbacks: imageCallbacks1,
            categoryTextList: categoryProductListtext1,
          ),
          HeadingWithViewAll(
            text: groceries,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GroceryViewAll()),
              );
            },
          ),
          const SizedBox(height: 14),
          CatagoryProductSlider(
            categoryList: categoryProductList3,
            imageCallbacks: imageCallbacks2,
            categoryTextList: categoryProductListtext1,
          ),
          HeadingWithViewAll(
            text: electroics,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ElectronicsViewAll()),
              );
            },
          ),
          const SizedBox(height: 14),
          CatagoryProductSlider(
            categoryList: categoryProductList2,
            imageCallbacks: imageCallbacks3,
            categoryTextList: categoryProductListtext1,
          ),
          HeadingWithViewAll(
            text: fruitsNvegetables,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FruitsNVegViewAll()),
              );
            },
          ),
          const SizedBox(height: 14),
          CatagoryProductSlider(
            categoryList: categoryProductList4,
            imageCallbacks: imageCallbacks4,
            categoryTextList: categoryProductListtext1,
          ),
        ],
      )),
    );
  }
}

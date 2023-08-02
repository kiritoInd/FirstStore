import 'package:easyshop_app/src/features/catalog/views/widgets/addItemBotton.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import '../../../../Models/catalog.dart';
import '../../../../res/color_Pallet.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const CatalogItem({Key? key, required this.catalog, this.onItemAdded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Container(
      // height: 230,
      decoration: BoxDecoration(
        border: Border.all(color: ELightGreen),
      ),
      child: Column(
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Container(
            // width: 200,
            constraints: const BoxConstraints(maxHeight: 81.1),
            child: ColoredBox(
              color: ELightGreenlightish,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      catalog.name.text.sm.color(Vx.white).bold.make(),
                      catalog.desc.text.sm.color(Colors.white).bold.make(),
                    ],
                  ).pOnly(left: 7, right: 7, top: 5),
                  Container(
                    height: 30,
                    width: 163,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: EtextColorWhite,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "₹${catalog.price}"
                            .text
                            .lg
                            .color(Vx.black)
                            .make()
                            .pOnly(left: 5),
                        AddItemButton(
                          catalog: catalog,
                          onItemAdded: onItemAdded, // Pass the callback
                        ).pOnly(right: 2),
                      ],
                    ),
                  ).pOnly(top: 18, left: 2, right: 2)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

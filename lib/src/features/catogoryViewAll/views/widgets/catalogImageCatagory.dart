import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class CatalogImageCatagory extends StatelessWidget {
  final String image;

  const CatalogImageCatagory({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
    ).box.make().pOnly(top: 15);
  }
}

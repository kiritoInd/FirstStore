import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 130,
      height: 97.6,
    );
  }
}

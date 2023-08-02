import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../Models/catalog.dart';
import '../contorller/productControllerProvider.dart';

class ProductCard extends ConsumerWidget {
  final Widget style; // Use Widget as the parameter type

  const ProductCard({Key? key, required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size; //this size provides

    final productController = ref.watch(productControllerProvider);

    return FutureBuilder<List<Item>>(
      future: productController.getProducts(context: context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            height: size.height,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (snapshot.hasError) {
          return SizedBox(
            height: size.height,
            child: const Center(
              child: Text("Error Loading Data"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          final data = snapshot.data;
          if (data != null && data.isNotEmpty) {
            CatalogModel.items = data;

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  style, // Use the provided style widget here
                ],
              ),
            );
          } else {
            return SizedBox(
              height: size.height,
              child: const Center(
                child: Text("No Products Found"),
              ),
            );
          }
        }
        return SizedBox(
          height: size.height,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

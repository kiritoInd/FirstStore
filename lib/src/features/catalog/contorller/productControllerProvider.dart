import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../Models/catalog.dart';
import '../../../utils/config.dart';
import '../../../utils/snackbar_service.dart';
import '../../../res/strings.dart';
import '../repos/productrepoprovider.dart';

final productControllerProvider = Provider((ref) {
  final productRepo = ref.watch(productRepoProvider);
  return ProductController(repo: productRepo);
});

class ProductController {
  final ProductRepo _repo; // Use the correct class name ProductRepo
  ProductController({required ProductRepo repo}) : _repo = repo;

  Future<List<Item>> getProducts({BuildContext? context}) async {
    final result = await _repo.getProducts();
    return result.fold(
      (failure) {
        if (AppConfig.devMode && context != null) {
          SnackBarService.showSnackBar(
              context: context, message: SnackBarMessages.productLoadFailed);
        }
        return [];
      },
      (products) {
        if (AppConfig.devMode && context != null) {
          SnackBarService.showSnackBar(
              context: context, message: SnackBarMessages.productLoadSuccess);
        }
        return products;
      },
    );
  }
}

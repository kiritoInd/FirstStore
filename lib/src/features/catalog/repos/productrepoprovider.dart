import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart';

import '../../../core/core.dart';
import '../../../Models/catalog.dart';
import '../../../res/strings.dart';

final productRepoProvider = Provider((ref) {
  final api = ref.watch(apiProvider);
  return ProductRepo(api: api);
});

class ProductRepo {
  final API _api;
  ProductRepo({required API api}) : _api = api;

  // Modify the method to use the mock server
  FutureEither<List<Item>> getProducts() async {
    // Set useMockServer to true here
    _api.useMockServer = true;
    final result = await _api.getRequest(
        url: '/getProducts',
        requireAuth: false); // Adjust the URL based on your API
    return result.fold(
      (Failure failure) {
        log(failure.message, name: LogLabel.product);
        return Left(failure);
      },
      (Response response) {
        try {
          final data = jsonDecode(response.body);
          final productJson = data['products'];
          log(productJson.toString(), name: LogLabel.product);
          final List<Item> products = [];
          for (dynamic product in productJson) {
            log(product.toString(), name: LogLabel.product);
            products.add(Item.fromMap(product));
          }
          return Right(products);
        } catch (e, stktrc) {
          log(FailureMessage.jsonParsingFailed, name: LogLabel.product);
          return Left(Failure(
            message: FailureMessage.jsonParsingFailed,
            stackTrace: stktrc,
          ));
        }
      },
    );
  }
}

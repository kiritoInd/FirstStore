import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";
import '../../../components/homeSearchField.dart';
import '../../../Models/catalog.dart';
import 'widgets/catalog_List.dart';
import 'dart:convert';

class TestProductCard extends StatefulWidget {
  final String searchQuery;

  const TestProductCard({
    this.searchQuery = '',
    Key? key,
  }) : super(key: key);

  @override
  State<TestProductCard> createState() => _TestProductCardState();
}

class _TestProductCardState extends State<TestProductCard> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 1000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (CatalogModel.items.isNotEmpty)
            Expanded(
              child: CatalogList(searchQuery: widget.searchQuery),
            )
          else
            const CircularProgressIndicator().centered().expand(),
        ],
      ),
    );
  }
}

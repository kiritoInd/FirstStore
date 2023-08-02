import 'package:easyshop_app/src/features/home/views/widgets/CustomAppbarHome.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../components/homeSearchField.dart';
import '../../catalog/views/testProduct.dart';

import '../../home/views/widgets/customAppBarWidget.dart';
import '../../home/views/widgets/customHeadingTextHome.dart';

import '../../home/views/widgets/catogorySlider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Shop Easy',
        BottomStackcolor: EsearchBGcolor,
        rightWidget: SizedBox(
          width: 300,
          height: 40,
          child: SearchField(
            searchQuery: searchQuery,
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: EsearchBGcolor,
          ),
          child: Column(
            children: [
              // const SizedBox(height: 10),
              const SizedBox(height: 10),
              const customHeadingTextHome(
                title: "Top-Selling Categories",
                titleFontSize: 19,
              ).pOnly(left: 10, right: 10),
              const SizedBox(height: 20),
              const CatogorySlider(),
              const SizedBox(height: 20),

              TestProductCard(
                searchQuery: searchQuery,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

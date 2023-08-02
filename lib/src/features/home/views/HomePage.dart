import 'package:easyshop_app/src/features/home/views/widgets/bottombannerslider.dart';
import 'package:easyshop_app/src/features/home/views/widgets/customHeadingTextHome.dart';
import 'package:easyshop_app/src/features/home/views/widgets/toogleButton.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:easyshop_app/src/res/strings.dart';
import 'package:easyshop_app/src/features/home/views/widgets/appbar.dart';
import 'package:easyshop_app/src/features/home/views/widgets/catogorySlider.dart';
import 'package:easyshop_app/src/features/home/views/widgets/homebanner_Slider.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../catalog/views/testProduct.dart';
import '../../search/view/SearchPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      child: Scaffold(
        appBar: const CustomAppBar(title: "Shop Easy"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Shop Easy Exclusives",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ).pOnly(bottom: 10),
                            const ToggleSwitch(),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // Replace 'SearchPage()' with the widget/page you want to navigate to.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchPage()),
                            );
                          },
                          child: Container(
                            width: 240,
                            height: 35,
                            child: Image.asset(
                              ImageAssets.searchimg,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ).p12(),
                  ),
                  const customHeadingTextHome().pOnly(left: 10, right: 10),
                  const BannerSlider(),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (HomeStrings.username)
                            .text
                            .xl2
                            .color(ELightGreen)
                            .make(),
                        const SizedBox(height: 20),
                        (HomeStrings.welcomMsg).text.lg.make(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ).pOnly(right: 50, left: 10),
                  const customHeadingTextHome(
                    title: "Top-Selling Categories",
                    titleFontSize: 19,
                  ).pOnly(left: 10, right: 10),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const CatogorySlider(),
                  ),
                  const Divider(height: 30, thickness: 4),
                  Row(
                    children: [
                      ("Special Deals")
                          .text
                          .lg
                          .bold
                          .align(TextAlign.left)
                          .make(),
                    ],
                  ).pOnly(top: 20, bottom: 20, left: 10),
                  // const ProductCard(
                  //     style: CatalogList(
                  //   searchQuery: '',
                  // )),
                  const SizedBox(height: 1000, child: TestProductCard()),
                  const customHeadingTextHome(
                    title: "Top Brands",
                    titleFontSize: 19,
                  ).pOnly(left: 10, right: 10),
                  const BottomBannerSlider(),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

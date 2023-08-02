import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/Amenities.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/CreateOffer.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/QuickLookCard.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/ServiceDetails.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/widgets/StoreDetailsCard.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/repos/StoreAdress_Provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/repos/contact_provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/ContactForm.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/StoreAddressForm.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopHomePage extends ConsumerWidget {
  const ShopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeTitle = ref.watch(storeNameProvider);
    final businessCategory = ref.watch(businessCategoryProvider);
    final rating = 5;
    return Scaffold(
      backgroundColor: ewhitishBg,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: ELightGreenhome,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: SizedBox(
          width: 330,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: const Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.grey,
                  size: 25,
                ),
              ).pOnly(right: 10),
              storeTitle.text.size(20).make(),
            ],
          ),
        ),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(
              CupertinoIcons.question_circle,
              size: 27,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 380,
                child: StoreDetailsCard(
                  storeTitle: storeTitle,
                  businessCategory: businessCategory,
                  rating: rating,
                ).pOnly(left: 12, top: 12, right: 12),
              ),
            ),
            const CreateOffer().pOnly(top: 20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const ServieDetails(),
            ).pOnly(top: 20, bottom: 20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ("Quick Look").text.size(18).bold.make(),
                  Column(
                    children: [
                      QuickLookCard(
                        firstIconData: CupertinoIcons.placemark,
                        firstText: "Store Address",
                        onEditTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoreAddressForm(),
                            ),
                          );
                        },
                      ),
                      Consumer(builder: (context, Ref, _) {
                        final streetAdress = ref.watch(streetAdresProvider);
                        final postalCode = ref.watch(postalCodeProvider);
                        final additionalDetail =
                            ref.watch(additionalDetailProvider);

                        if (streetAdress.isEmpty &&
                            postalCode.isEmpty &&
                            additionalDetail.isEmpty) {
                          return Container();
                        } else {
                          return SizedBox(
                            width: 340,
                            child:
                                ("$streetAdress $postalCode $additionalDetail")
                                    .text
                                    .align(TextAlign.left)
                                    .sm
                                    .caption(context)
                                    .make(),
                          ).pOnly(bottom: 10);
                        }
                      }),
                      const Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      QuickLookCard(
                        firstIconData: CupertinoIcons.placemark,
                        firstText: "Opening Hours",
                      ),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      QuickLookCard(
                        firstIconData: CupertinoIcons.placemark,
                        firstText: "Contact number",
                        onEditTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactForm(),
                            ),
                          );
                        },
                      ),
                      Consumer(builder: (context, Ref, _) {
                        final phoneNumberProvider =
                            Ref.watch(contactNumberProvider);
                        if (phoneNumberProvider.isEmpty) {
                          return Container();
                        } else {
                          return SizedBox(
                            width: 340,
                            child: "Phone No. $phoneNumberProvider"
                                .text
                                .align(TextAlign.left)
                                .sm
                                .caption(context)
                                .make(),
                          ).pOnly(bottom: 10);
                        }
                      }),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                  const QuickLookCard(
                    firstIconData: CupertinoIcons.placemark,
                    firstText: "Add About Your Business",
                    textColor: Colors.blue,
                  ),
                ],
              ).pOnly(
                left: 10,
                right: 10,
                top: 10,
                bottom: 10,
              ),
            ),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Amenities().pOnly(
                left: 15,
                right: 15,
              ),
            ).pOnly(top: 20, bottom: 10),
          ],
        ).pOnly(top: 30, bottom: 20),
      ),
    );
  }
}

import 'dart:io';

import 'package:easyshop_app/src/features/AdminPanal/features/CreateOffer/controller/offer_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/CreateOffer/repo/offer_provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/controller/Contact_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/repos/contact_provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/widgets/FormFieldWidget.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:easyshop_app/src/res/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateOfferPage extends ConsumerWidget {
  const CreateOfferPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerController = ref.watch(offerTitleControllerProvider);
    final discountController = ref.watch(discountControllerProvider);
    final discountValueController = ref.watch(discountValueControllerProvider);
    final offerdurationController = ref.watch(offerDurationControllerProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.keyboard_arrow_left,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Offer Details Form")
                  .text
                  .bold
                  .color(Colors.black)
                  .make(),
              Image.asset(
                ImageAssets.offerimag2,
                width: 40,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 340,
                child: ("Create New Offer")
                    .text
                    .size(24)
                    .align(TextAlign.left)
                    .bold
                    .make(),
              ).pOnly(bottom: 10, top: 20),
              SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Offer Title :",
                      hintText: "",
                      controller: offerController,
                      provider: offerTitleProvider,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Discount Type :",
                      hintText: "",
                      controller: discountController,
                      provider: discountProvider,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Discount Value :",
                      hintText: "",
                      keyboardType: TextInputType.number,
                      controller: discountValueController,
                      provider: discountValueProvider,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Offer Duration: ",
                      hintText: "",
                      keyboardType: TextInputType.datetime,
                      controller: offerdurationController,
                      provider: offerDurationProvider,
                    ),
                  ],
                ),
              ).pOnly(bottom: 10),
              ("Upload Image: ").text.bold.size(16).make().pOnly(bottom: 5),
              ImageUploadOffer().pOnly(bottom: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      buttonText: "Preview",
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      textsize: 16,
                    ),
                  ).pOnly(right: 40),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      buttonText: "Save",
                      buttonColor: Colors.white,
                      textColor: EstartBackgroundColor,
                      textsize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ).pOnly(left: 20, right: 20),
        ),
      ),
    );
  }
}

class ImageUploadOffer extends ConsumerWidget {
  const ImageUploadOffer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageState = ref.watch(offerimageStateNotifierProvider);

    Future<void> _pickImage(ImageSource source) async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        ref
            .read(offerimageStateNotifierProvider.notifier)
            .setImage(File(pickedFile.path));
      }
    }

    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => _pickImage(ImageSource.gallery),
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(),
              child: imageState != null
                  ? ClipRRect(
                      // Apply border radius to the image
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        imageState,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : const Icon(Icons.add_photo_alternate, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

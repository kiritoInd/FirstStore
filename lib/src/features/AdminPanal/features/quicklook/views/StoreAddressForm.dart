import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/controller/StoreAdress_Controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/repos/StoreAdress_Provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/widgets/CustomAppBarForms.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/quicklook/views/widgets/FormFieldWidget.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/controller/store_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreAddressForm extends ConsumerWidget {
  const StoreAddressForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeNameController = ref.watch(storeNameControllerProvider);
    final storeAdressController = ref.watch(streetAdresControllerProvider);
    final postalCodeController = ref.watch(postalCodeControllerProvider);
    final additionAddController = ref.watch(additionalDetailControllerProvider);

    return Scaffold(
      backgroundColor: ewhitishBg,
      appBar: CustomAppbarForms(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 340,
                child: ("Edit Store Address")
                    .text
                    .size(24)
                    .align(TextAlign.left)
                    .bold
                    .make(),
              ).pOnly(bottom: 2),
              ("Tell your customers more about your Store address")
                  .text
                  .color(Colors.black54)
                  .size(14)
                  .fontWeight(FontWeight.w400)
                  .make()
                  .pOnly(bottom: 20),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Store Name:",
                      hintText: "Enter your Store name here",
                      controller: storeNameController,
                      provider: storeNameProvider,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Street Address:",
                      hintText: "Enter your address here",
                      controller: postalCodeController,
                      provider: streetAdresProvider,
                    ),
                    const Text(
                      "User can  modify the address details.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ).pOnly(left: 3),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "City, State, Postal Code:",
                      hintText: "ex: Hsr layout 27th main road..",
                      controller: storeAdressController,
                      provider: postalCodeProvider,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormfieldWidget(
                      labelText: "Additional Details:",
                      hintText: " ex: Land mark",
                      controller: additionAddController,
                      provider: additionalDetailProvider,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ).pOnly(top: 30),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      buttonText: "CANCEL",
                      buttonColor: Colors.white,
                      textColor: EstartBackgroundColor,
                      textsize: 16,
                    ),
                  ),
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
                      buttonText: "SAVE",
                      buttonColor: ebluetext2,
                      textColor: Colors.white,
                      textsize: 16,
                    ),
                  ),
                ],
              ).pOnly(top: 10),
            ],
          ).pOnly(left: 12, right: 12),
        ),
      ),
    );
  }
}

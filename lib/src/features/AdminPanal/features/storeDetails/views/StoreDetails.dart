import 'package:easyshop_app/src/features/AdminPanal/features/YourShop/views/YourShop.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/widgets/CustomAppBarStore.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/widgets/LogoUploadWidget.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/widgets/StoreFormWidget.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreDetailPage extends ConsumerWidget {
  const StoreDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarStore(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 340,
              child: ("Store Details")
                  .text
                  .size(24)
                  .align(TextAlign.left)
                  .bold
                  .make(),
            ).pOnly(bottom: 10),
            ("Tell your customers more about your  Store")
                .text
                .color(Colors.black54)
                .size(14)
                .bold
                .make()
                .pOnly(bottom: 20),
            StoreFormWidget(),
            LogoUploadWidget().pOnly(bottom: 90, top: 40),
            const Divider(
              thickness: 2,
            ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const YourShop(),
                        ),
                      );
                    },
                    buttonText: "SAVE",
                    buttonColor: ebluetext2,
                    textColor: Colors.white,
                    textsize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ).p20(),
      ),
    );
  }
}

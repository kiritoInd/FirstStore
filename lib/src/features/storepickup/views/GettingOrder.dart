import 'package:easyshop_app/src/features/shopingcart/views/widgets/ShoppingCartItemList.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/OrderSummary.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/PickupInfoPage.dart';
import 'package:easyshop_app/src/features/storepickup/views/widget/PickupMethodPage.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../home/views/widgets/customAppBarWidget.dart';

class GettingOrders extends StatefulWidget {
  final VoidCallback? onItemAdded; // Add the onItemAdded callback

  const GettingOrders({Key? key, this.onItemAdded}) : super(key: key);

  @override
  State<GettingOrders> createState() => _GettingOrdersState();
}

class _GettingOrdersState extends State<GettingOrders> {
  double discountPercentage = 10.0; // Define the discount percentage

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provides

    return Scaffold(
      backgroundColor: lightgrey,
      appBar: CustomAppBarWidget(
        onIconPressed: () => Navigator.pop(context),
        BottomStackcolor: lightgrey,
        title: 'Shop Eadsy',
        rightWidget: const SizedBox(
          width: 302,
          height: 30,
          child: Text(
            "Getting your orders",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
          ),
        ).pOnly(top: 12),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
              width: size.width,
              child: const ShoppingCartItemList(),
            ),
            const PickInfoPage(),
            const PickMethodPage(),
            OrderSummary(discountPercentage: discountPercentage, size: size)
                .pOnly(top: 20),
          ],
        ),
      ),
    );
  }
}

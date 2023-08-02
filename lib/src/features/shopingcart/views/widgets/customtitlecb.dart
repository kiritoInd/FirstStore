import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../home/views/Home.dart';
import 'CartList.dart';

class CustomAppBarcd extends StatefulWidget implements PreferredSizeWidget {
  final double leftPadding;

  const CustomAppBarcd({
    Key? key,
    this.leftPadding = 0,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  _CustomAppBarcdState createState() => _CustomAppBarcdState();
}

class _CustomAppBarcdState extends State<CustomAppBarcd> {
  late String title;
  late ValueNotifier<bool> cartChangeNotifier;

  @override
  void initState() {
    super.initState();
    title = "0 items in cart"; // Initial title
    cartChangeNotifier = ShoppingCart.cartChangeNotifier;
    cartChangeNotifier.addListener(updateTitle); // Listen for cart changes
  }

  @override
  void dispose() {
    cartChangeNotifier.removeListener(updateTitle); // Clean up listener
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [title.text.color(Colors.black).xl2.bold.make()],
    );
  }

  void updateTitle() {
    setState(() {
      final cartItemsCount = ShoppingCart.items.length;
      title = "$cartItemsCount items in cart";
    });
  }
}

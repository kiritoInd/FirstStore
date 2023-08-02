import 'package:easyshop_app/src/features/itemsDesc/views/ratingPage.dart';
import 'package:easyshop_app/src/features/itemsDesc/views/widgets/rating.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Models/catalog.dart';
import '../../home/views/widgets/catogorySlider.dart';
import '../../home/views/widgets/customAppBarWidget.dart';
import '../../shopingcart/views/widgets/CartList.dart';

class ItemDetailPage extends StatefulWidget {
  final Item catalog;
  final VoidCallback? onItemAdded;

  const ItemDetailPage({Key? key, required this.catalog, this.onItemAdded})
      : super(key: key);

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  double rating = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        BottomStackcolor: Colors.white,
        title: 'Shop Easy',
        rightWidget: SizedBox(
          width: 210,
          height: 24,
          child: ("").text.xl2.bold.color(Colors.black).make(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: SizedBox(
              child: Image.asset(
                widget.catalog.image,
                fit: BoxFit.fitWidth,
                height: 180,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                widget.catalog.name.text.xl3.align(TextAlign.left).bold.make(),
              ],
            ),
          ),
          const SizedBox(height: 25),
          widget.catalog.description.text.sm
              .color(Colors.black)
              .make()
              .pOnly(left: 20, right: 20),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  width: 40,
                  child: TextButton(
                    onPressed: () => showRating(context),
                    child: const Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                    ),
                  ),
                ),
                ('$rating').text.xl.bold.color(Colors.black).make(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 400,
            child: 'Related Item'
                .text
                .lg
                .bold
                .align(TextAlign.left)
                .make()
                .pOnly(left: 20),
          ),
          const SizedBox(height: 30),
          const CatogorySlider(),
          const SizedBox(height: 30),
          Container(
            height: 45,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: EstartBackgroundColor),
            ),
            child: CustomElevatedButton(
              onPressed: () {
                ShoppingCart.addItem(widget.catalog);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        '${widget.catalog.name} added to the shopping cart'),
                  ),
                );
                if (widget.onItemAdded != null) {
                  widget.onItemAdded!();
                }
              },
              buttonText: 'Add to cart',
              buttonColor: Colors.white,
              textColor: EstartBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  void showRating(BuildContext context) async {
    // Show the rating dialog and wait for the result (i.e., the message to display)
    String? message = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 0),
          child: Text(
            'How would you rate your experience?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: RatingDialog(
            itemSize: 40,
            onRatingChanged: (newRating) {
              setState(() {
                rating = newRating;
              });
            },
          ),
        ),
        actions: [
          Center(
            child: SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RatingPage(),
                    ),
                  );
                },
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: EstartBackgroundColor,
                ),
              ),
            ).pOnly(bottom: 10),
          ),
        ],
      ),
    );

    // Check if a message was returned from the RatingPage (i.e., the review was submitted)
    if (message != null && message.isNotEmpty) {
      // Show the "thanks for submitting the review" message in the rating dialog
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Row(
            children: [
              const Icon(
                CupertinoIcons.check_mark_circled,
                color: Colors.green,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          actions: [
            Center(
              child: Container(
                height: 40,
                width: 100,
                child: Container(
                  height: 45,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: EstartBackgroundColor),
                  ),
                  child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    buttonText: 'Back',
                    buttonColor: Colors.white,
                    textColor: EstartBackgroundColor,
                  ),
                ),
              ).pOnly(bottom: 10),
            ),
          ],
        ),
      );
    } else {}
  }
}

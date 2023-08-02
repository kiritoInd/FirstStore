import 'package:easyshop_app/src/features/home/views/widgets/customAppBarWidget.dart';
import 'package:easyshop_app/src/features/itemsDesc/views/widgets/rating.dart';
import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double? rating;

  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    rating ??= 0;

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Rating stars
              RatingDialog(
                itemSize: 60,
                onRatingChanged: (newRating) {
                  setState(() {
                    rating = newRating;
                  });
                },
              ),
              ("Tell us a bit more about why you chose $rating")
                  .text
                  .lg
                  .make()
                  .pOnly(top: 20),
              // Customer review input
              Container(
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: reviewController,
                  decoration: InputDecoration(hintText: 'Write your review'),
                  maxLines: 10,
                ).pOnly(top: 10, left: 20, right: 20),
              ).pOnly(top: 40, left: 10, right: 10),
              Container(
                width: 310,
                height: 45,
                child: CustomElevatedButton(
                  onPressed: () {
                    print('Rating: $rating');
                    print('Review: ${reviewController.text}');
                    Navigator.of(context)
                        .pop('Thanks for submitting the review');
                    Navigator.of(context)
                        .pop('Feedback submitted successfully! ');
                  },
                  buttonText: "Submit",
                  buttonColor: EstartBackgroundColor,
                  textColor: Colors.white,
                ),
              ).pOnly(top: 35)
            ],
          ).p8(),
        ),
      ),
    );
  }
}

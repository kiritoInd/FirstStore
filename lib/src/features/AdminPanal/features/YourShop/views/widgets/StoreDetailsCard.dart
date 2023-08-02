import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/views/StoreDetails.dart';
import 'package:easyshop_app/src/res/Color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreDetailsCard extends ConsumerWidget {
  const StoreDetailsCard({
    Key? key,
    required this.storeTitle,
    required this.businessCategory,
    required this.rating,
  }) : super(key: key);

  final String storeTitle;
  final String businessCategory;
  final int rating;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageStore = ref.watch(imageStateNotifierProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (imageStore != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: FileImage(imageStore),
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
          )
        else
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.add_a_photo_outlined, color: ebluetext),
          ),
        SizedBox(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              storeTitle.text.size(18).bold.make(),
              businessCategory.text.size(14).color(Colors.black54).make(),
              StarRatingWidget(rating: rating),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {},
                child: "Preview in app"
                    .text
                    .uppercase
                    .color(Colors.blue)
                    .size(12)
                    .make()
                    .pOnly(bottom: 20),
              ),
            ],
          ),
        ).pOnly(left: 20),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoreDetailPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.edit_outlined,
            color: Colors.black,
            size: 25,
          ).pOnly(bottom: 20),
        )
      ],
    );
  }
}

class StarRatingWidget extends StatelessWidget {
  final int rating;

  StarRatingWidget({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const Icon(Icons.star, color: Colors.amber, size: 20),
        Text(
          '$rating',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ).pOnly(left: 4),
      ],
    );
  }
}

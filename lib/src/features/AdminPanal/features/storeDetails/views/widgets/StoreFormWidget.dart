import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/controller/store_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreFormWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeNameController = ref.watch(storeNameControllerProvider);
    final businessCategoryController =
        ref.watch(businessCategoryControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Store Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ).pOnly(bottom: 15),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: storeNameController,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter store name",
                      contentPadding:
                          EdgeInsets.only(bottom: 5, left: 10, right: 10),
                    ),
                    onChanged: (newValue) {
                      // Update the storeNameProvider state when the text changes
                      ref.read(storeNameProvider.notifier).updateText(newValue);
                    },
                  ),
                ),
              ),
              const Text(
                "Customer would see this name on PhonePe app",
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
          height: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Business Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ).pOnly(bottom: 15),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: businessCategoryController,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter Category",
                      contentPadding:
                          EdgeInsets.only(bottom: 5, left: 10, right: 10),
                    ),
                    onChanged: (newValue) {
                      // Update the businessCategoryProvider state when the text changes
                      ref
                          .read(businessCategoryProvider.notifier)
                          .updateText(newValue);
                    },
                  ),
                ),
              ),
              const Text(
                "Category helps your customer to discover your quickly",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                  fontWeight: FontWeight.w200,
                ),
              ).pOnly(left: 3),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class LogoUploadWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageState = ref.watch(imageStateNotifierProvider);

    Future<void> _pickImage(ImageSource source) async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        ref
            .read(imageStateNotifierProvider.notifier)
            .setImage(File(pickedFile.path));
      }
    }

    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text(
                    "Business Logo (optional)",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ).pOnly(bottom: 5),
                  const Text(
                    "Make your business stand out",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ).pOnly(right: 10),
                ],
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: const Text(
                  "Do's and Dont's",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ).pOnly(left: 2),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _pickImage(ImageSource.gallery),
            child: Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: imageState != null
                  ? ClipRRect(
                      // Apply border radius to the image
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        imageState,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Icon(Icons.add_a_photo_outlined, color: egreentext),
            ),
          ),
        ],
      ),
    );
  }
}

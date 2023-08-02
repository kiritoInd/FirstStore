import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class FormfieldWidget extends ConsumerWidget {
  const FormfieldWidget({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.provider,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final StateNotifierProvider<TextFieldStateNotifier, String> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ).pOnly(bottom: 10),
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
              keyboardType: keyboardType,
              controller: controller,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                contentPadding:
                    const EdgeInsets.only(bottom: 5, left: 10, right: 10),
              ),
              onChanged: (newValue) {
                ref.read(provider.notifier).updateText(newValue);
              },
            ),
          ),
        ),
      ],
    );
  }
}

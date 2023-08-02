import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OfferImageStateNotifier extends StateNotifier<File?> {
  OfferImageStateNotifier() : super(null);

  void setImage(File? image) {
    state = image;
  }
}

final offerTitleControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final discountControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
final discountValueControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
final offerDurationControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

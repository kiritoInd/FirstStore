import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeNameControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final businessCategoryControllerProvider =
    Provider<TextEditingController>((ref) {
  return TextEditingController();
});

class ImageStateNotifier extends StateNotifier<File?> {
  ImageStateNotifier() : super(null);

  void setImage(File? image) {
    state = image;
  }
}

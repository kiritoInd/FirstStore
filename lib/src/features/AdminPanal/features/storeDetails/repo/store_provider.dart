import 'dart:io';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/controller/store_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextFieldStateNotifier extends StateNotifier<String> {
  TextFieldStateNotifier() : super('');

  void updateText(String newText) {
    state = newText;
  }
}

final storeNameProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final businessCategoryProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final imageStateNotifierProvider =
    StateNotifierProvider<ImageStateNotifier, File?>((ref) {
  return ImageStateNotifier();
});

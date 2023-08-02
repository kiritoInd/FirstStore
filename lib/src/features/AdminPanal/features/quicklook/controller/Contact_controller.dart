import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactNumControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final altNumControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
final emailControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

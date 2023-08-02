import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streetAdresControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final postalCodeControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
final additionalDetailControllerProvider =
    Provider<TextEditingController>((ref) {
  return TextEditingController();
});

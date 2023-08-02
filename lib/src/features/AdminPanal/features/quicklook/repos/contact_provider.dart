import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactNumberProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final altNumberProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final emailAdressProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

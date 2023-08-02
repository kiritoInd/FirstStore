import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streetAdresProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final postalCodeProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final additionalDetailProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final combinedAddressProvider = Provider<String>((ref) {
  final streetAdres = ref.watch(streetAdresProvider);
  final postalCode = ref.watch(postalCodeProvider);
  final additionalDetail = ref.watch(additionalDetailProvider);

  return '$streetAdres $postalCode $additionalDetail';
});

import 'dart:io';
import 'package:easyshop_app/src/features/AdminPanal/features/CreateOffer/controller/offer_controller.dart';
import 'package:easyshop_app/src/features/AdminPanal/features/storeDetails/repo/store_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final offerimageStateNotifierProvider =
    StateNotifierProvider<OfferImageStateNotifier, File?>((ref) {
  return OfferImageStateNotifier();
});

final offerTitleProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final discountProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final discountValueProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

final offerDurationProvider =
    StateNotifierProvider<TextFieldStateNotifier, String>((ref) {
  return TextFieldStateNotifier();
});

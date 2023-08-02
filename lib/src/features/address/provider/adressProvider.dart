import 'package:flutter_riverpod/flutter_riverpod.dart';

// Create a StateNotifier to hold the final address
class FinalAddressNotifier extends StateNotifier<String> {
  FinalAddressNotifier() : super("");

  void updateAddress(String combinedAddress) {
    state = combinedAddress;
  }
}

// Create a StateNotifierProvider to manage the final address state
final finalAddressProvider =
    StateNotifierProvider<FinalAddressNotifier, String>(
  (ref) => FinalAddressNotifier(),
);

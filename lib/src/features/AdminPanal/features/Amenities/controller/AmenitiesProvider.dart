import 'package:hooks_riverpod/hooks_riverpod.dart';

final amencheckboxStateProvider1 =
    StateNotifierProvider<CheckboxStateNotifier, bool>((ref) {
  return CheckboxStateNotifier();
});
final amencheckboxStateProvider2 =
    StateNotifierProvider<CheckboxStateNotifier, bool>((ref) {
  return CheckboxStateNotifier();
});
final amencheckboxStateProvider3 =
    StateNotifierProvider<CheckboxStateNotifier, bool>((ref) {
  return CheckboxStateNotifier();
});
final amencheckboxStateProvider4 =
    StateNotifierProvider<CheckboxStateNotifier, bool>((ref) {
  return CheckboxStateNotifier();
});

class CheckboxStateNotifier extends StateNotifier<bool> {
  CheckboxStateNotifier() : super(false);

  void toggleCheckboxState() {
    state = !state;
  }
}

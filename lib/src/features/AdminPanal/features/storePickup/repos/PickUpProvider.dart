import 'package:hooks_riverpod/hooks_riverpod.dart';

final checkboxStateProvider1 =
    StateNotifierProvider<CheckboxStateNotifier1, bool>((ref) {
  return CheckboxStateNotifier1();
});

class CheckboxStateNotifier1 extends StateNotifier<bool> {
  CheckboxStateNotifier1() : super(false);

  void toggleCheckboxState() {
    state = !state;
  }
}

final checkboxStateProvider2 =
    StateNotifierProvider<CheckboxStateNotifier2, bool>((ref) {
  return CheckboxStateNotifier2();
});

class CheckboxStateNotifier2 extends StateNotifier<bool> {
  CheckboxStateNotifier2() : super(false);

  void toggleCheckboxState() {
    state = !state;
  }
}

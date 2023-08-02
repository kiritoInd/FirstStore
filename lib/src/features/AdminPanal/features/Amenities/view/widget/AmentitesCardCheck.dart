import 'package:easyshop_app/src/features/AdminPanal/features/Amenities/controller/AmenitiesProvider.dart';
import 'package:easyshop_app/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AmentitesCardCheck extends ConsumerWidget {
  final StateNotifierProvider<CheckboxStateNotifier, bool> checkboxProvider;
  final IconData iconData;
  final String text;
  final String text2;

  const AmentitesCardCheck({
    Key? key,
    required this.checkboxProvider,
    required this.iconData,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
        color: amentiesColor,
      ),
      child: InkWell(
        onTap: () {
          ref.read(checkboxProvider.notifier).toggleCheckboxState();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  iconData,
                  size: 30,
                  color: Colors.black54,
                ),
                Text(text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Consumer(
                    builder: (context, ref, _) {
                      final isChecked = ref.watch(checkboxProvider);
                      return Visibility(
                        visible: isChecked,
                        child: Transform.translate(
                          offset: const Offset(-1.7, -2.1),
                          child: const Icon(
                            Icons.check,
                            size: 26,
                            color: Colors.green,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            (text2).text.make()
          ],
        ).pOnly(left: 20, right: 20),
      ),
    );
  }
}

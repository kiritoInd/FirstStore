import 'package:easyshop_app/src/features/AdminPanal/features/storePickup/repos/PickUpProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PickupCard1 extends StatelessWidget {
  final String text1;
  final String text2;
  final Color borderColor;

  const PickupCard1({
    required this.text1,
    required this.text2,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
          height: 115,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Consumer(
            builder: (context, ref, child) {
              return InkWell(
                onTap: () {
                  ref
                      .read(checkboxStateProvider1.notifier)
                      .toggleCheckboxState();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 260,
                            child: Text(
                              text2,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: borderColor),
                        ),
                        child: Consumer(
                          builder: (context, ref, _) {
                            final isChecked = ref.watch(checkboxStateProvider1);
                            return Visibility(
                              visible: isChecked,
                              child: Transform.translate(
                                offset: const Offset(-1.7, -2.1),
                                child: const Icon(
                                  Icons.check_circle_rounded,
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
                ),
              );
            },
          )),
    );
  }
}

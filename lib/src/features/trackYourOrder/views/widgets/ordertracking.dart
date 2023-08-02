import 'package:flutter/material.dart';

class OrderProgressTracker extends StatelessWidget {
  final int currentStep;
  final List<String> steps;

  OrderProgressTracker({required this.currentStep, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(steps.length, (index) {
        bool isCompleted = index < currentStep;

        return Column(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? Colors.green : Colors.grey,
              ),
            ),
            if (index < steps.length - 1)
              Container(
                height: 55.0,
                width: 2.0,
                color: isCompleted ? Colors.green : Colors.grey,
              ),
          ],
        );
      }),
    );
  }
}

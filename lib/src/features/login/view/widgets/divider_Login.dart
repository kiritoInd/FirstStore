import 'package:flutter/material.dart';

class DividerLogin extends StatelessWidget {
  const DividerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Transform.translate(
            offset: const Offset(20, 0),
            child: FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: 0.8,
              child: Container(
                height: 0.4,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            textAlign: TextAlign.center,
            "or login with",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.0,
            ),
          ),
        ),
        Expanded(
          child: Transform.translate(
            offset: const Offset(-46, 0),
            child: FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: 0.8,
              child: Container(
                height: 0.4,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function(bool) onAction;

  const NotificationDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
            onAction(true); // User tapped "Yes"
          },
          child: Text('Don’t Allow'),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
            onAction(false); // User tapped "No"
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

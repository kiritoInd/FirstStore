import 'package:easyshop_app/src/features/login/view/widgets/customElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MessageNFileUploadForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 183,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextFormField(
            maxLines: 10,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(20),
              hintText: 'Write a message.. ',
            ),
          ),
        ).pOnly(right: 10),
        const SizedBox(height: 16),
        const Text(
          'Max file size: 20MB. File type allowed: zip, pdf, doc, docx, jpeg, jpg, png.',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ).pOnly(left: 10, right: 10),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 180,
              height: 40,
              child: CustomElevatedButton(
                onPressed: () {},
                buttonText: "Send Message",
                buttonColor: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}

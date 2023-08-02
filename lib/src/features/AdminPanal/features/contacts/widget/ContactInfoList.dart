import 'package:easyshop_app/src/features/AdminPanal/features/contacts/widget/contackListView.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactInfoList extends StatefulWidget {
  const ContactInfoList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ContactInfoList> createState() => _ContactInfoListState();
}

class _ContactInfoListState extends State<ContactInfoList> {
  bool headerCheckboxValue = false;

  void _updateContactCheckboxes(bool value) {
    setState(() {
      headerCheckboxValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  width: 53,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select all").text.size(2).make(),
                      SizedBox(
                        width: 15,
                        height: 12,
                        child: Transform.scale(
                          scale: 1,
                          child: Checkbox(
                            value: headerCheckboxValue,
                            onChanged: (value) {
                              setState(() {
                                headerCheckboxValue = value!;
                              });
                              // Call the callback function to update the checkboxes in ContactListView
                              _updateContactCheckboxes(value!);
                            },
                          ),
                        ),
                      ).pOnly(
                        top: 2,
                        left: 6,
                      ),
                    ],
                  )),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 65,
                child: ("Name").text.bold.align(TextAlign.left).size(15).make(),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 100,
                child: ("Contact No.")
                    .text
                    .bold
                    .align(TextAlign.center)
                    .size(15)
                    .make(),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 110,
                child:
                    ("Email").text.align(TextAlign.center).bold.size(15).make(),
              ),
            ),
          ],
        ).pOnly(bottom: 20, top: 20),
        SizedBox(
          height: widget.size.height * 0.43,
          child: ContactListView(
              headerCheckboxValue:
                  headerCheckboxValue), // Pass the headerCheckboxValue to ContactListView
        ),
      ],
    );
  }
}

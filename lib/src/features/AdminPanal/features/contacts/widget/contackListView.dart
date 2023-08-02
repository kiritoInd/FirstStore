import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactListView extends StatefulWidget {
  final bool headerCheckboxValue;

  const ContactListView({super.key, required this.headerCheckboxValue});

  @override
  State<ContactListView> createState() => _ContactListViewState();
}

class _ContactListViewState extends State<ContactListView> {
  List<bool> contactCheckboxes = List.filled(contacts.length, false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 6,
                height: 10,
                child: Transform.scale(
                  scale: 1,
                  child: Checkbox(
                    value:
                        widget.headerCheckboxValue || contactCheckboxes[index],
                    onChanged: (value) {
                      setState(() {
                        contactCheckboxes[index] = value!;
                      });
                    },
                  ),
                ),
              ).pOnly(top: 12),
            ),
            Flexible(
              flex: 1,
              child: Text(
                contacts[index].name,
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ).pOnly(top: 10),
            Flexible(
              flex: 1,
              child: Text(
                contacts[index].contactNumber,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ).pOnly(top: 10),
            Flexible(
              flex: 2,
              child: Text(
                contacts[index].email,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ).pOnly(top: 10),
          ],
        ).pOnly(top: 14, bottom: 14);
      },
    );
  }
}

class Contact {
  final String name;
  final String contactNumber;
  final String email;

  Contact(
      {required this.name, required this.contactNumber, required this.email});
}

final List<Contact> contacts = [
  Contact(
      name: "John Smith", contactNumber: "9698428797", email: "John@gmail.com"),
  Contact(name: "Emily", contactNumber: "9698428797", email: "Emily@gmail.com"),
  Contact(name: "Dolly", contactNumber: "9698428797", email: "Dolly@gmail.com"),
  Contact(name: "Roodh", contactNumber: "9698428797", email: "Roodh@gmail.com"),
  Contact(name: "Radha", contactNumber: "9698428797", email: "Radha@gmail.com"),
  Contact(name: "Sonu", contactNumber: "9698428797", email: "Sonu@gmail.com"),
  Contact(name: "Smith", contactNumber: "9698428797", email: "Smith@gmail.com"),
  Contact(name: "Anu", contactNumber: "9698428797", email: "Anu@gmail.com"),
  Contact(name: "Rudh", contactNumber: "9698428797", email: "Rudh@gmail.com"),
  Contact(name: "Verly", contactNumber: "9698428797", email: "Verly@gmail.com"),
];

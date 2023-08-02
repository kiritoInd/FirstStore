import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TableWithViewDetail extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'Role': 'Product Manager',
      'Location': 'Bangalore',
      'Department': 'Product Management',
    },
    {
      'Role': 'UI/UX Designer',
      'Location': 'New York, NY',
      'Department': 'Design',
    },
    {
      'Role': 'Mobile App Tester',
      'Location': 'Austin, TX',
      'Department': 'QA',
    },
    // Add more data here...
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        columnSpacing: 5, // Increase the spacing between columns if needed
        columns: [
          const DataColumn(
            label: Text(
              'Role',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              textAlign: TextAlign.center,
              // Align text at the center
            ),
          ),
          const DataColumn(
            label: Text(
              'Location',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              textAlign: TextAlign.center,
              // Align text at the center
            ),
          ),
          const DataColumn(
            label: Text(
              'Department',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              textAlign: TextAlign.center, // Align text at the center
            ),
          ),
          DataColumn(
            label: const Text(
              'View Detail',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ).pOnly(left: 2),
          ),
        ],
        rows: List.generate(
          data.length,
          (index) => DataRow(
            cells: [
              DataCell(
                Wrap(
                  children: [
                    Text(
                      data[index]['Role'],
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              DataCell(
                Wrap(
                  children: [
                    Text(
                      data[index]['Location'],
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              DataCell(
                Wrap(
                  children: [
                    Text(
                      data[index]['Department'],
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              DataCell(
                Wrap(
                  children: [
                    Container(
                      height: 25,
                      width: 70,
                      child: ViewDetailButton(
                        onPressed: () {
                          // Implement the action for View Detail here
                          // For example, navigate to a new page with more details
                          // or show a dialog with additional information
                          // for the row at index 'index'.
                        },
                      ),
                    ).pOnly(left: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewDetailButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ViewDetailButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: TextButton(
        child: ("View Details").text.sm.scale(0.65).color(Colors.white).make(),
        onPressed: onPressed,
      ),
    );
  }
}

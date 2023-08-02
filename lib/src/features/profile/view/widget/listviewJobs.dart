import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ListViewPage extends StatelessWidget {
  final List<Map<String, String>> dataList = [
    {
      'ROLE': ' Software Engineer',
      'LOCATION': ' New York',
      'DEPARTMENT': ' Engineering',
    },
    {
      'ROLE': ' UX Designer',
      'LOCATION': ' San Francisco',
      'DEPARTMENT': ' Design',
    },

    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 1.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "ROLE:",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        dataList[index]['ROLE']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ).pOnly(top: 20, bottom: 3),
                  Row(
                    children: [
                      const Text(
                        "LOCATION:",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        dataList[index]['LOCATION']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ).pOnly(top: 3, bottom: 3),
                  Row(
                    children: [
                      const Text(
                        "DEPARTMENT:",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        dataList[index]['DEPARTMENT']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ).pOnly(top: 3, bottom: 15),
                ],
              ),
              RedTextButton().pOnly(bottom: 15),
            ],
          ),
        );
      },
    );
  }
}

class RedTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: TextButton(
        onPressed: () {
          // Add functionality for the button here
        },
        child: Text(
          'View Detail',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// 

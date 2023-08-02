import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  final String imagePath;
  final String quote;
  final String designation;
  final String name;
  final int starRating;

  TestimonialCard({
    required this.imagePath,
    required this.quote,
    required this.designation,
    required this.name,
    required this.starRating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      elevation: 0, // Set elevation to 0 to remove the shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors
                  .transparent, // Set the background color to transparent to remove the border
            ),
            SizedBox(height: 28),
            Text(
              quote,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 28),
            Text(
              designation,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              name,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Icon(
                  index < starRating ? Icons.star : Icons.star_border,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

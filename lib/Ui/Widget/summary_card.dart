import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    Key? key, required this.number, required this.title,
  }) : super(key: key);

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('$number', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24
            ),),
            Text(title)
          ],
        ),
      ),
    );
  }
}
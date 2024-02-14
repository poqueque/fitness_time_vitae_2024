import 'package:fitness_time/styles/app_styles.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    super.key,
    required this.iconData,
    required this.label,
    required this.content,
  });

  final IconData iconData;
  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppStyles.heliotrope,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(iconData),
            Text(label),
            Text(
              content,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

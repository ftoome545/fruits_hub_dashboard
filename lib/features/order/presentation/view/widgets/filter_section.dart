import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Filter'),
        SizedBox(
          width: 16,
        ),
        Icon(Icons.filter)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class WidgetChip extends StatefulWidget {
  const WidgetChip({super.key});

  @override
  State<WidgetChip> createState() => _WidgetChipState();
}

class _WidgetChipState extends State<WidgetChip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text('Item 1'),
          deleteIcon: Icon(Icons.delete),
          side: BorderSide(color: Colors.green),
          onDeleted: () {
            debugPrint('Deleted');
          },
        ),
      ),
    );
  }
}

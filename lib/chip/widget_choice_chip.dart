import 'package:flutter/material.dart';

class WidgetChoiceChip extends StatefulWidget {
  const WidgetChoiceChip({super.key});

  @override
  State<WidgetChoiceChip> createState() => _WidgetChoiceChipState();
}

class _WidgetChoiceChipState extends State<WidgetChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
            label: Text('Item 1'),
            selected: _isSelected,
          onSelected: (value) {
            setState(() {
              _isSelected = value;
            });
          },
          selectedColor: Colors.green,
          backgroundColor: Colors.orange,
          side: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

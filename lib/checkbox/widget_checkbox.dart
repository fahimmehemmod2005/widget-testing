import 'package:flutter/material.dart';

class WidgetCheckbox extends StatefulWidget {
  const WidgetCheckbox({super.key});

  @override
  State<WidgetCheckbox> createState() => _WidgetCheckboxState();
}

class _WidgetCheckboxState extends State<WidgetCheckbox> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          shape: CircleBorder(),
          value: _isChecked,
          activeColor: Colors.orange,
          tristate: true,
          onChanged: (value){
            setState(() {
              _isChecked = value;
            });
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetCheckboxListTile extends StatefulWidget {
  const WidgetCheckboxListTile({super.key});

  @override
  State<WidgetCheckboxListTile> createState() => _WidgetCheckboxListTileState();
}

class _WidgetCheckboxListTileState extends State<WidgetCheckboxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: Text('Item'),
            subtitle: Text('This is a widget testing item'),
            activeColor: Colors.orange,
            checkColor: Colors.black,
            tileColor: Colors.green,
            controlAffinity: ListTileControlAffinity.leading,
            value: _isChecked,
            tristate: true,
            onChanged: (value) {
           setState(() {
             _isChecked = value;
           });
            },
        ),
      ),
    );
  }
}

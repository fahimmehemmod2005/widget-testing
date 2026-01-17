import 'package:flutter/material.dart';

class WidgetRadioListTile extends StatefulWidget {
  const WidgetRadioListTile({super.key});

  @override
  State<WidgetRadioListTile> createState() => _WidgetRadioListTileState();
}

List<String> options = ['Option 1', 'Option 2'];

class _WidgetRadioListTileState extends State<WidgetRadioListTile> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            RadioListTile(
              title: Text('Option 1'),
              value: options[0],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                currentOption = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Option 2'),
              value: options[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                currentOption = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

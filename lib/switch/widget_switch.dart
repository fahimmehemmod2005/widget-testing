import 'package:flutter/material.dart';

class WidgetSwitch extends StatefulWidget {
  const WidgetSwitch({super.key});

  @override
  State<WidgetSwitch> createState() => _WidgetSwitchState();
}

class _WidgetSwitchState extends State<WidgetSwitch> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
            value: _isSwitched,
            onChanged: (value) {
              setState(() {
                _isSwitched = value;
              });
            },
        ),
      ),
    );
  }
}

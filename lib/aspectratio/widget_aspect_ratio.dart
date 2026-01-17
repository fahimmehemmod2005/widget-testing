import 'package:flutter/material.dart';

class WidgetAspectRatio extends StatefulWidget {
  const WidgetAspectRatio({super.key});

  @override
  State<WidgetAspectRatio> createState() => _WidgetAspectRatioState();
}

class _WidgetAspectRatioState extends State<WidgetAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          height: 300.0,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(color: Colors.green
            ),
          ),
        ),
      ),
    );
  }
}

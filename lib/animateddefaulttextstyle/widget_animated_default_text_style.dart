import 'package:flutter/material.dart';

class WidgetAnimatedDefaultTextStyle extends StatefulWidget {
  const WidgetAnimatedDefaultTextStyle({super.key});

  @override
  State<WidgetAnimatedDefaultTextStyle> createState() => _WidgetAnimatedDefaultTextStyleState();
}

class _WidgetAnimatedDefaultTextStyleState extends State<WidgetAnimatedDefaultTextStyle> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 120.0,
          child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
          ),
          ),
          TextButton(onPressed: (){
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          }, child: const Text('Switch'))
        ],
      ),
    );
  }
}

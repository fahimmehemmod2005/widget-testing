import 'package:flutter/material.dart';

class WidgetAnimatedPositioned extends StatefulWidget {
  const WidgetAnimatedPositioned({super.key});

  @override
  State<WidgetAnimatedPositioned> createState() =>
      _WidgetAnimatedPositionedState();
}

class _WidgetAnimatedPositionedState extends State<WidgetAnimatedPositioned> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200.0,
        height: 350.0,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: _selected ? 200.0 : 50.0,
              height: _selected ? 50.0 : 200.0,
              top: _selected ? 50.0 : 150.0,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetAnimatedSize extends StatefulWidget {
  const WidgetAnimatedSize({super.key});

  @override
  State<WidgetAnimatedSize> createState() => _WidgetAnimatedSizeState();
}

class _WidgetAnimatedSizeState extends State<WidgetAnimatedSize> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}

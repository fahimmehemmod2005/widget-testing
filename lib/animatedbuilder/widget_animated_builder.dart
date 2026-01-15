import 'package:flutter/material.dart';
import 'dart:math' as math;

class WidgetAnimatedBuilder extends StatefulWidget {
  const WidgetAnimatedBuilder({super.key});

  @override
  State<WidgetAnimatedBuilder> createState() => _WidgetAnimatedBuilderState();
}

class _WidgetAnimatedBuilderState extends State<WidgetAnimatedBuilder> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle:  _controller.value * 2 * math.pi,
                child: child,
              );
            },
            child: Icon(Icons.person,size: 100,)
        ),
      ),
    );
  }
}

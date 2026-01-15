import 'dart:async';
import 'package:flutter/material.dart';

class WidgetAnimatedModelBarrier extends StatefulWidget {
  const WidgetAnimatedModelBarrier({super.key});

  @override
  State<WidgetAnimatedModelBarrier> createState() =>
      _WidgetAnimatedModelBarrierState();
}

class _WidgetAnimatedModelBarrierState extends State<WidgetAnimatedModelBarrier>
    with TickerProviderStateMixin {
  bool _isPressed = false;

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  );

  final ColorTween _colorTween = ColorTween(
    begin: Colors.orangeAccent.withOpacity(0.5),
    end: Colors.blueGrey.withOpacity(0.5),
  );

  late final Animation<Color?> _colorAnimation = _colorTween.animate(
    _animationController,
  );

  late final AnimatedModalBarrier _animatedModelBarrier = AnimatedModalBarrier(
    color: _colorAnimation,
    dismissible: true,
  );

  @override
  void dispose() {
    _animationController.dispose();
    _colorAnimation.isDismissed;
    _animatedModelBarrier.onDismiss;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
              width: 250.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: const Text('Press'),
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(Duration(seconds: 3), () {
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                  ),
                  if (_isPressed) _animatedModelBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

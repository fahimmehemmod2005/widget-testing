import 'package:flutter/material.dart';

class WidgetAnimatedRotation extends StatefulWidget {
  const WidgetAnimatedRotation({super.key});

  @override
  State<WidgetAnimatedRotation> createState() => _WidgetAnimatedRotationState();
}

class _WidgetAnimatedRotationState extends State<WidgetAnimatedRotation> {
  double _turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: AnimatedRotation(
                turns: _turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(size: 100.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _turns += 1;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Rotate Logo'),
            ),
          ],
        ),
      ),
    );
  }
}

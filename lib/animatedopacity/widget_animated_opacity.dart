import 'package:flutter/material.dart';

class WidgetAnimatedOpacity extends StatefulWidget {
  const WidgetAnimatedOpacity({super.key});

  @override
  State<WidgetAnimatedOpacity> createState() => _WidgetAnimatedOpacityState();
}

class _WidgetAnimatedOpacityState extends State<WidgetAnimatedOpacity> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(size: 50),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

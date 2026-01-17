import 'package:flutter/material.dart';

class WidgetAnimatedPhysicalModel extends StatefulWidget {
  const WidgetAnimatedPhysicalModel({super.key});

  @override
  State<WidgetAnimatedPhysicalModel> createState() =>
      _WidgetAnimatedPhysicalModelState();
}

class _WidgetAnimatedPhysicalModelState
    extends State<WidgetAnimatedPhysicalModel> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              color: Colors.white,
              shadowColor: Colors.black,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}

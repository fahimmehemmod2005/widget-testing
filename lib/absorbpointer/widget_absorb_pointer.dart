import 'package:flutter/material.dart';

class WidgetAbsorbPointer extends StatefulWidget {
  const WidgetAbsorbPointer({super.key});

  @override
  State<WidgetAbsorbPointer> createState() => _WidgetAbsorbPointerState();
}

class _WidgetAbsorbPointerState extends State<WidgetAbsorbPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 100.0,
              width: 200.0,
              child: ElevatedButton(onPressed: () {}, child: null),
            ),
            SizedBox(
              height: 200.0,
              width: 100.0,
              child: AbsorbPointer(
                  child: ElevatedButton(onPressed: () {}, child: null)),
            ),
          ],
        ),
      ),
    );
  }
}

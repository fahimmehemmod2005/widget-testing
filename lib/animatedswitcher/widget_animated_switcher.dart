import 'package:flutter/material.dart';

class WidgetAnimatedSwitcher extends StatefulWidget {
  const WidgetAnimatedSwitcher({super.key});

  @override
  State<WidgetAnimatedSwitcher> createState() => _WidgetAnimatedSwitcherState();
}

class _WidgetAnimatedSwitcherState extends State<WidgetAnimatedSwitcher> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Text(
            '$_count',
            style: TextStyle(fontSize: 40),
            key: ValueKey(_count),
          ),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

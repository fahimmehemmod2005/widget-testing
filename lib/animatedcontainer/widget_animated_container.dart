import 'package:flutter/material.dart';

class WidgetAnimatedContainer extends StatefulWidget {
  const WidgetAnimatedContainer({super.key});

  @override
  State<WidgetAnimatedContainer> createState() => _WidgetAnimatedContainerState();
}

class _WidgetAnimatedContainerState extends State<WidgetAnimatedContainer> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _selected ? 200.0 : 100.0,
            height: _selected ? 100.0 : 200.0,
            color:  _selected ? Colors.green : Colors.blue,
            alignment: _selected ? Alignment.center : Alignment.topCenter,
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetAnimatedAlign extends StatefulWidget {
  const WidgetAnimatedAlign({super.key});

  @override
  State<WidgetAnimatedAlign> createState() => _WidgetAnimatedAlignState();
}

class _WidgetAnimatedAlignState extends State<WidgetAnimatedAlign> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _selected = !_selected;
            });
          },
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
                alignment: _selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}

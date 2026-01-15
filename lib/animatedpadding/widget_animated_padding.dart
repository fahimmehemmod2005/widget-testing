import 'package:flutter/material.dart';

class WidgetAnimatedPadding extends StatefulWidget {
  const WidgetAnimatedPadding({super.key});

  @override
  State<WidgetAnimatedPadding> createState() => _WidgetAnimatedPaddingState();
}

class _WidgetAnimatedPaddingState extends State<WidgetAnimatedPadding> {
  double paddingValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange
            ),
              child: const Text('Change Padding'),
              onPressed: (){
              setState(() {
                paddingValue = paddingValue == 0.0 ? 100.0 : 0;
              });
              },
          ),
          Text('Padding = $paddingValue'),
          AnimatedPadding(
              padding: EdgeInsetsGeometry.all(paddingValue),
              duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          )
        ],
      ),
    );
  }
}

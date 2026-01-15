import 'package:flutter/material.dart';

class WidgetAnimatedCrossFade extends StatefulWidget {
  const WidgetAnimatedCrossFade({super.key});

  @override
  State<WidgetAnimatedCrossFade> createState() => _WidgetAnimatedCrossFadeState();
}

class _WidgetAnimatedCrossFadeState extends State<WidgetAnimatedCrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100.0,
          ),
          TextButton(onPressed: (){
            setState(() {
              _bool = !_bool;
            });
          },
              child: Text('Switch')
          ),

          AnimatedCrossFade(
            firstChild: Image.network('https://blog.3bee.com/_next/image/?url=https%3A%2F%2Fapi-backend-assets.s3.eu-south-1.amazonaws.com%2Fprivate%2Ffiler_public%2Fb8%2F5c%2Fb85c004f-8f5d-4b6c-ab70-25051c3fb9ba%2F11496fd2-2abf-4037-8b09-9627a1e60a3c.jpg&w=3840&q=75'),
              secondChild: Image.network('https://blog.3bee.com/_next/image/?url=https%3A%2F%2Fapi-backend-assets.s3.eu-south-1.amazonaws.com%2Fprivate%2Ffiler_public%2F13%2F19%2F13198eb1-0bff-42c7-a5b4-85f88fd09538%2Ffc25a725-4f75-4c78-91cb-327c301873c4.jpg&w=3840&q=75'),
              crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1)),
        ],
      ),
    );
  }
}

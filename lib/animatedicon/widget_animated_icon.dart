import 'package:flutter/material.dart';

class WidgetAnimatedIcon extends StatefulWidget {
  const WidgetAnimatedIcon({super.key});

  @override
  State<WidgetAnimatedIcon> createState() => _WidgetAnimatedIconState();
}

class _WidgetAnimatedIconState extends State<WidgetAnimatedIcon> with TickerProviderStateMixin {

  bool _isPlay = false;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1)
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            if ( _isPlay == false ) {
              _controller.forward();
              _isPlay = true;
            } else {
              _controller.reverse();
              _isPlay = false;
            }
          },
          child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}

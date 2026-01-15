import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isOn = !isOn;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 40,
            width: 100,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: isOn ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(999),
            ),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(999),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

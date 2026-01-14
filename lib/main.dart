import 'package:flutter/material.dart';
import 'package:widget_testing/about_dialog/widget_about_list_tile.dart';
import 'package:widget_testing/about_dialog/widget_show_dialog.dart';
import 'package:widget_testing/checkbox/widget_checkbox.dart';
import 'package:widget_testing/checkbox/widget_checkbox_list_tile.dart';
import 'package:widget_testing/chip/widget_chip.dart';
import 'package:widget_testing/chip/widget_choice_chip.dart';
import 'package:widget_testing/switch/widget_switch.dart';

import 'absorbpointer/widget_absorb_pointer.dart';
import 'alertdialog/widget_alert_dialog.dart';
import 'animatedalign/widget_animated_align.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetAnimatedAlign(),
    );
  }
}


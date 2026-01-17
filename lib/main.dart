import 'package:flutter/material.dart';
import 'package:widget_testing/about_dialog/widget_about_list_tile.dart';
import 'package:widget_testing/about_dialog/widget_show_dialog.dart';
import 'package:widget_testing/checkbox/widget_checkbox.dart';
import 'package:widget_testing/checkbox/widget_checkbox_list_tile.dart';
import 'package:widget_testing/chip/widget_chip.dart';
import 'package:widget_testing/chip/widget_choice_chip.dart';
import 'package:widget_testing/radiolisttile/widget_radio_list_tile.dart';
import 'package:widget_testing/switch/custom_switch.dart';
import 'package:widget_testing/switch/widget_switch.dart';
import 'package:widget_testing/tabbar/widget_tab_bar.dart';
import 'absorbpointer/widget_absorb_pointer.dart';
import 'alertdialog/widget_alert_dialog.dart';
import 'animatedalign/widget_animated_align.dart';
import 'animatedbuilder/widget_animated_builder.dart';
import 'animatedcontainer/widget_animated_container.dart';
import 'animatedcrossfade/widget_animated_cross_fade.dart';
import 'animateddefaulttextstyle/widget_animated_default_text_style.dart';
import 'animatedicon/widget_animated_icon.dart';
import 'animatedlist/widget_animated_list.dart';
import 'animatedmodelbarrier/widget_animated_model_barrier.dart';
import 'animatedopacity/widget_animated_opacity.dart';
import 'animatedpadding/widget_animated_padding.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetRadioListTile(),
    );
  }
}


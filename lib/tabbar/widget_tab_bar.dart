import 'package:flutter/material.dart';

class WidgetTabBar extends StatefulWidget {
  const WidgetTabBar({super.key});

  @override
  State<WidgetTabBar> createState() => _WidgetTabBarState();
}

class _WidgetTabBarState extends State<WidgetTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Widget Tab Bar"),
          bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
          ),
        body: TabBarView(
          children: [
            Container(color: Colors.white, child: Icon(Icons.home)),
            Container(color: Colors.white, child: Icon(Icons.settings)),
            Container(color: Colors.white, child: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}

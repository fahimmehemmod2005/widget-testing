import 'package:flutter/material.dart';

class WidgetAboutListTile extends StatefulWidget {
  const WidgetAboutListTile({super.key});

  @override
  State<WidgetAboutListTile> createState() => _WidgetAboutListTileState();
}

class _WidgetAboutListTileState extends State<WidgetAboutListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AboutListTile(
          icon: FlutterLogo(),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter',
          applicationVersion: 'V1.0.0',
          aboutBoxChildren: [
            Text('This is a demo widget testing.')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetAboutDialog extends StatefulWidget {
  const WidgetAboutDialog({super.key});

  @override
  State<WidgetAboutDialog> createState() => _WidgetAboutDialogState();
}

class _WidgetAboutDialogState extends State<WidgetAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text('Info'),
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context) {
                    return AboutDialog(
                      applicationIcon: FlutterLogo(),
                      applicationLegalese: 'Legalese',
                      applicationName: 'Flutter',
                      applicationVersion: 'Version 1.0.0',
                      children: [
                        Text('This is a demo application.')
                      ],
                    );
                  },
              );
            },
        ),
      ),
    );
  }
}

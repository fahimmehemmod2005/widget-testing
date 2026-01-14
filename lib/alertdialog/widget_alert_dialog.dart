import 'package:flutter/material.dart';

class WidgetAlertDialog extends StatefulWidget {
  const WidgetAlertDialog({super.key});

  @override
  State<WidgetAlertDialog> createState() => _WidgetAlertDialogState();
}

class _WidgetAlertDialogState extends State<WidgetAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Flutter Application'),
                  content: Text('this is the alert dialog box'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}

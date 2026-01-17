import 'package:flutter/material.dart';

class WidgetAutoComplete extends StatefulWidget {
  const WidgetAutoComplete({super.key});

  @override
  State<WidgetAutoComplete> createState() => _WidgetAutoCompleteState();
}

class _WidgetAutoCompleteState extends State<WidgetAutoComplete> {
  static const List<String> listItems = ['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return listItems.where((String item) {
                return item.contains((textEditingValue.text.toLowerCase()));
              });
            },
            onSelected: (String item){
              print('The $item was selected');
            },
          ),
        ],
      ),
    );
  }
}

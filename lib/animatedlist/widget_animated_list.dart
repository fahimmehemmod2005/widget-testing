import 'package:flutter/material.dart';

class WidgetAnimatedList extends StatefulWidget {
  const WidgetAnimatedList({super.key});

  @override
  State<WidgetAnimatedList> createState() => _WidgetAnimatedListState();
}

class _WidgetAnimatedListState extends State<WidgetAnimatedList> {

  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  void _addItem() {
    final index = 0;
    _items.insert(index, 'Item ${_items.length + 1}');
    _key.currentState!.insertItem(
      0,
      duration: const Duration(milliseconds: 400),
    );
  }
  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsetsGeometry.all(10),
          color: Colors.red,
          child: ListTile(title: Text('Deleted')),
        ),
      );
    }, duration: const Duration(milliseconds: 300));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: AnimatedList(
          key: _key,
          initialItemCount: 0,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              key: UniqueKey(),
              sizeFactor: animation,
              child: Card(
                color: Colors.orange,
                child: ListTile(
                  title: Text(_items[index]),
                  trailing: IconButton(
                    onPressed: () {
                      _removeItem(index);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}

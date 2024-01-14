import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_9_sliver_animated_list
/// Created by sujangmac
///
/// Description:
///
class SliverAnimatedListExample extends StatefulWidget {
  const SliverAnimatedListExample({super.key});

  @override
  State<SliverAnimatedListExample> createState() =>
      _SliverAnimatedListExampleState();
}

class _SliverAnimatedListExampleState extends State<SliverAnimatedListExample> {
  final GlobalKey<SliverAnimatedListState> _listKey = GlobalKey();

  List<int> _items = [];

  void _addItem() {
    final int index = _items.length;
    _items.add(index);
    _listKey.currentState?.insertItem(index);
  }

  void _removeItem(int index) {
    final int removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, animation),
      duration: const Duration(milliseconds: 500),
    );
  }

  Widget _buildItem(int item, Animation<double> animation) => SizeTransition(
        sizeFactor: animation,
        child: Card(
          child: ListTile(
            title: Text('Item $item'),
            trailing: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => _removeItem(item),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverAnimatedList'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAnimatedList(
              key: _listKey,
              itemBuilder: (context, index, animation) =>
                  _buildItem(index, animation),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addItem,
          child: const Icon(Icons.add),
        ),
      );
}

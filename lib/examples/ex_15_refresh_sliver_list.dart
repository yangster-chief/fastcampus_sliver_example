import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_15_refresh_sliver_list
/// Created by sujangmac
///
/// Description:
///
class RefreshSliverListExample extends StatefulWidget {
  const RefreshSliverListExample({super.key});

  @override
  State<RefreshSliverListExample> createState() =>
      _RefreshSliverListExampleState();
}

class _RefreshSliverListExampleState extends State<RefreshSliverListExample> {
  Future<void> _handleRefresh() async {
    await Future<void>.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverListWithRefresh'),
        ),
        body: RefreshIndicator(
          onRefresh: _handleRefresh,
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: 30,
                (context, index) => ListTile(
                  title: Text('Item $index'),
                ),
              )),
            ],
          ),
        ),
      );
}

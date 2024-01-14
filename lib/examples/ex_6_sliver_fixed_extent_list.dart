import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_6_sliver_fixed_extent_list
/// Created by sujangmac
///
/// Description:
///

class SliverFixedExtentListExample extends StatelessWidget {
  const SliverFixedExtentListExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            title: const Text('SliverFixedExtentList'),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  ),
                ),
                itemExtent: 50.0)
          ],
        ),
      );
}

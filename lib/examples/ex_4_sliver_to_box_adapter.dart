import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_4_sliver_to_box_adapter
/// Created by sujangmac
///
/// Description:
///
class SliverToBoxAdapterExample extends StatelessWidget {
  const SliverToBoxAdapterExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 150.0,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('SliverToBoxAdapter'),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 50,
                (context, index) => ListTile(
                  title: Text('List Item $index'),
                ),
              ),
            ),
          ],
        ),
      );
}

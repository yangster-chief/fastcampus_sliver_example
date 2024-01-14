import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_11_sliver_fill_viewport
/// Created by sujangmac
///
/// Description:
///
class SliverFillViewportExample extends StatelessWidget {
  const SliverFillViewportExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverFillViewport'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillViewport(
                viewportFraction: 0.5,
                delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) => Container(
                    color: Colors.purple[100 * (index % 9)],
                    child: Text(
                      'Item $index',
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ))
          ],
        ),
      );
}

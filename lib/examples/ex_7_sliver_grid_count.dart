import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_7_sliver_grid_count
/// Created by sujangmac
///
/// Description:
///
class SliverGridCountExample extends StatelessWidget {
  const SliverGridCountExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverGrid.count'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 4,
              children: List.generate(
                20,
                (index) => Container(
                  alignment: Alignment.center,
                  color: Colors.green[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                ),
              ),
            )
          ],
        ),
      );
}

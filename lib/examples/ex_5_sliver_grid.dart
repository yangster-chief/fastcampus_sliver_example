import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///
/// sliver_example
/// File Name: ex_5_sliver_grid
/// Created by sujangmac
///
/// Description:
///

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverGrid'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.0,
              ),
            )
          ],
        ),
      );
}

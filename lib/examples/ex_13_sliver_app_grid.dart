import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_13_sliver_app_grid
/// Created by sujangmac
///
/// Description:
///

class SliverAppGridExample extends StatelessWidget {
  const SliverAppGridExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blue,
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Mixed Sliver Layout'),
                background: Image.network(
                  'https://picsum.photos/250?image=10',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                ),
              ),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) => ListTile(
                title: Text('List Item $index'),
              ),
            )),
          ],
        ),
      );
}

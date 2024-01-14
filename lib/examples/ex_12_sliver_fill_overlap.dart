import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_12_sliver_fill_overlap
/// Created by sujangmac
///
/// Description:
///
class SliverFillOverlapExample extends StatelessWidget {
  const SliverFillOverlapExample({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Sliver Overlap Example'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Tab 1',
                ),
                Tab(
                  text: 'Tab 2',
                )
              ],
            ),
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const Text('Nested Scroll View'),
                  pinned: true,
                  expandedHeight: 150.0,
                  forceElevated: innerBoxIsScrolled,
                ),
              ),
            ],
            body: TabBarView(
              children: [
                _buildTabView('Tab 1 Content'),
                _buildTabView('Tab 2 Content'),
              ],
            ),
          ),
        ),
      );

  Widget _buildTabView(String text) => Builder(
        builder: (context) => CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => ListTile(
                title: Text('$text Item $index'),
              ),
            ))
          ],
        ),
      );
}

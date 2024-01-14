import 'package:flutter/material.dart';

///
/// sliver_example
/// File Name: ex_14_sliver_app_bar_with_tabs
/// Created by sujangmac
///
/// Description:
///
class SliverAppBarWithTabsExample extends StatelessWidget {
  const SliverAppBarWithTabsExample({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverAppBar(
                floating: true,
                pinned: true,
                title: Text('SliverAppbar with Tabs'),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.info), text: "Tab 1"),
                    Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 2"),
                    Tab(icon: Icon(Icons.add), text: "Tab 3"),
                  ],
                ),
              ),
            ],
            body: const TabBarView(
              children: [
                Center(child: Text('Content of Tab 1')),
                Center(child: Text('Content of Tab 2')),
                Center(child: Text('Content of Tab 3')),
              ],
            ),
          ),
        ),
      );
}

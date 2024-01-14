import 'package:flutter/material.dart';
import 'package:sliver_example/examples.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SliverExampleNavigatorList(),
    );
  }
}

final List<Map<String, dynamic>> _examples = [
  {
    'title': 'SliverAppBar',
    'widget': const SliverAppBarExample(),
  },
  {
    'title': 'SliverPersistentHeader',
    'widget': const SliverPersistentHeaderExample(),
  },
  {
    'title': 'SliverPadding',
    'widget': const SliverPaddingExample(),
  },
  {
    'title': 'SliverToBoxAdapter',
    'widget': const SliverToBoxAdapterExample(),
  },
  {
    'title': 'SliverGrid',
    'widget': const SliverGridExample(),
  },
  {
    'title': 'SliverFixedExtendedList',
    'widget': const SliverFixedExtentListExample(),
  },
  {
    'title': 'SliverGrid.count',
    'widget': const SliverGridCountExample(),
  },
  {
    'title': 'SliverGrid.extent',
    'widget': const SliverGridExtentExample(),
  },
  {
    'title': 'SliverAnimatedList',
    'widget': const SliverAnimatedListExample(),
  },
  {
    'title': 'SliverFillRemaining',
    'widget': const SliverFillRemainingExample(),
  },
  {
    'title': 'SliverFillViewport',
    'widget': const SliverFillViewportExample(),
  },
  {
    'title': 'Sliver Overlap',
    'widget': const SliverFillOverlapExample(),
  },
  {
    'title': 'Sliver App Grid Mix',
    'widget': const SliverAppGridExample(),
  },
  {
    'title': 'SliverAppBarWithTabs',
    'widget': const SliverAppBarWithTabsExample(),
  },
  {
    'title': 'SliverListWithRefresh',
    'widget': const RefreshSliverListExample(),
  }
];

class SliverExampleNavigatorList extends StatelessWidget {
  const SliverExampleNavigatorList({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'sliver examples',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.primaries.first,
        ),
        body: ListView.builder(
          itemCount: _examples.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_examples[index]['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => _examples[index]['widget'],
                ),
              );
            },
          ),
        ),
      );
}

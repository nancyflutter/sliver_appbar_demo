import 'package:flutter/material.dart';
import 'package:sliver_appbar_demo/screens/demo_screen.dart';

class AdvancedSliverAppBar extends StatelessWidget {
  const AdvancedSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      slivers: [
        const SliverPersistentHeader(
          delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
          pinned: true,
        ),
        buildImages(),
      ],
    ),
  );

  Widget buildImages() => SliverGrid(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
    delegate: SliverChildBuilderDelegate(
          (context, index) => ImageWidget(index: index),
      childCount: 20,
    ),
  );
}
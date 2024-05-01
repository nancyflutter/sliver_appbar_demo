import 'package:flutter/material.dart';
import 'package:sliver_appbar_demo/main.dart';
import 'package:sliver_appbar_demo/screens/demo_screen.dart';

class TabBarSliverAppbar extends StatelessWidget {
  const TabBarSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              // title: Text(MyApp.title),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.map), text: 'Tab 1'),
                  Tab(icon: Icon(Icons.portrait), text: 'Tab 2'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            buildImages(),
            buildImages(),
          ],
        ),
      ),
    ),
  );

  Widget buildImages() => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
    itemCount: 20,
    itemBuilder: (context, index) => ImageWidget(index: index,),
  );
}
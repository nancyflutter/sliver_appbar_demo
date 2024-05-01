import 'package:flutter/material.dart';
import 'package:sliver_appbar_demo/screens/advance_sliver_screen.dart';
import 'package:sliver_appbar_demo/screens/basic_sliver_screen.dart';
import 'package:sliver_appbar_demo/screens/home_screen.dart';
import 'package:sliver_appbar_demo/screens/sliver_appbar_title_fix.dart';
import 'package:sliver_appbar_demo/screens/tabbar_sliverappbar_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    const style = TextStyle(color: Colors.black);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.blue.shade300,
      unselectedItemColor: Colors.indigo,
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          label: "Basic",
          icon: Icon(
            Icons.ac_unit,
          ),
        ),
        BottomNavigationBarItem(
          label: "TabBar",
          icon: Icon(
            Icons.tab,
          ),
        ),
        BottomNavigationBarItem(
          label: "Advanced",
          icon: Icon(
            Icons.add_chart_sharp,
          ),
        ),
        BottomNavigationBarItem(
          label: "Flutter Logo",
          icon: Icon(
            Icons.back_hand_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Sliver Title",
          icon: Icon(
            Icons.title,
          ),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return const BasicSliverAppBar();
      case 1:
        return const TabBarSliverAppbar();
      case 2:
        return const AdvancedSliverAppBar();
      case 3:
        return const Sample2();
      case 4:
        return SamplePage();
      default:
        return Container();
    }
  }
}

class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    const size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      clipBehavior: Clip.none,
      // overflow: Overflow.visible,
      fit: StackFit.expand,
      children: [
        Opacity(
          opacity: disappear(shrinkOffset),
          child: Image.network(
            'https://source.unsplash.com/random?mono+dark',
            fit: BoxFit.cover,
          ),
        ),
        Opacity(
          opacity: appear(shrinkOffset),
          child: AppBar(
            // title: Text(MyApp.title),
            centerTitle: true,
          ),
        ),
        Positioned(
          top: top,
          left: 20,
          right: 20,
          child: Opacity(
            opacity: disappear(shrinkOffset),
            child: Card(
              child: Row(
                children: [
                  Expanded(child: buildButton(text: 'Share', icon: Icons.share)),
                  Expanded(child: buildButton(text: 'Like', icon: Icons.thumb_up)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildButton({
    required String text,
    required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: const TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

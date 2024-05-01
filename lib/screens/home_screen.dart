import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
// import 'package:flutter_radar_chart/flutter_radar_chart.dart';

class Sample2 extends StatelessWidget {
  const Sample2({super.key});

  @override
  Widget build(BuildContext context) {
    double numberOfFeatures = 5;
    const ticks = [0, 50, 100];
    var features = ["Attack", "Creativity", "Tactics", "Defence", "Skills"];
    var data = [
      [40, 82, 52, 100, 82]
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data.map((graph) => graph.sublist(0, numberOfFeatures.floor())).toList();

    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                expandedHeight: 400,
              ),
              pinned: true,
              floating: true,
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(top: 0.0, right: 20, left: 20, bottom: 0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 1ST
              Container(
                width: 353,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    bottom: 20,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Player",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff333333),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Country"),
                          Text("25"),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Position"),
                          Text("Defender"),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Date of Birth"),
                          Text("17 July, 2024"),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Height"),
                          Text("181 cms"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// 2ND
              Container(
                width: 353,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    bottom: 20,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trophies",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff333333),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Wrap(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color(0xff014C73).withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(
                                color: const Color(0xff014C73),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
                              child: Text(
                                "European Cup",
                                style: TextStyle(
                                  color: Color(0xff014C73),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color(0xff014C73).withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(
                                color: const Color(0xff014C73),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
                              child: Text(
                                "European Super Cup",
                                style: TextStyle(
                                  color: Color(0xff014C73),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color(0xff014C73).withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(
                                color: const Color(0xff014C73),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
                              child: Text(
                                "FIFA Club World Cup",
                                style: TextStyle(
                                  color: Color(0xff014C73),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// 3rd
              Container(
                width: 353,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    bottom: 0,
                    right: 16,
                    top: 0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, top: 0.5),
                              child: SizedBox(
                                height: 40,
                                width: 40,
                                child: Image(
                                  image: AssetImage("assets/images/img3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 43,
                              width: 43,
                              child: Image(
                                image: AssetImage("assets/images/imge2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          "Football News",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff333333),
                          ),
                        ),
                        subtitle: Text(
                          "Jove, Lionel Messi",
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        trailing: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/imge4.png"),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "22",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff333333),
                                  ),
                                ),
                                Text(
                                  "October",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff828282),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                              child: VerticalDivider(),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Lionel Messi for UEFA Men’s Player of\nthe year",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// 4th
              Container(
                width: 353,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    bottom: 20,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discipline",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff333333),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "08",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                "Foul’s\nwon",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                            child: VerticalDivider(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "03",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                "Foul’s\nConceded",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                            child: VerticalDivider(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "03",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                "Yellow\nCards",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                            child: VerticalDivider(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "01",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                "Red\nCards",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// 5th
              Container(
                width: 353,
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: RadarChart(
                  axisColor: Colors.grey,
                  outlineColor: Colors.grey,
                  featuresTextStyle: const TextStyle(
                    color: Color(0xff828282),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  graphColors: const [Colors.red],
                  ticks: ticks,
                  features: features,
                  data: data,
                  reverseAxis: true,
                  sides: 5,
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// 6th
              Container(
                width: 353,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    bottom: 20,
                    right: 16,
                    top: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Matches",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff333333),
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff2D9CDB),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff2D9CDB),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        // child: Container(),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context, double shrinkOffset, overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Stack(
          alignment: Alignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Container(
              height: 400,
              width: 420,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/img1.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 80),
                child: Text(
                  "Lionel Messi",
                  style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, left: 20, bottom: 60),
                child: Text(
                  "Lionel Messi for UEFA Men’s Player of the year",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 43.0, bottom: 0, right: 15),
                  child: SizedBox(
                    height: 36,
                    width: 36,
                    child: Image(
                      image: AssetImage("assets/images/imge2.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: expandedHeight / 1.12 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 16,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: const SizedBox(
              height: 80,
              width: 353,
              child: Card(
                borderOnForeground: false,
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Player Age"),
                          Text("25"),
                        ],
                      ),
                      VerticalDivider(
                        indent: 18,
                        endIndent: 18,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Games"),
                          Text("200+"),
                        ],
                      ),
                      VerticalDivider(
                        indent: 18,
                        endIndent: 18,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Goal Scored"),
                          Text("500+"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 400;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

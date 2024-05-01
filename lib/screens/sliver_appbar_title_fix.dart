
import 'dart:math';
import 'package:flutter/material.dart';


class SamplePage extends StatelessWidget {
  static const _kBasePadding = 16.0;
  static const kExpandedHeight = 250.0;

  final ValueNotifier<double> _titlePaddingNotifier = ValueNotifier(_kBasePadding);

  final _scrollController = ScrollController();

  double get _horizontalTitlePadding {
    const kCollapsedPadding = 60.0;

    if (_scrollController.hasClients) {
      return min(_kBasePadding + kCollapsedPadding, _kBasePadding + (kCollapsedPadding * _scrollController.offset) / (kExpandedHeight - kToolbarHeight));
    }

    return _kBasePadding;
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _titlePaddingNotifier.value = _horizontalTitlePadding;
    });

    return Scaffold(
      body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
                  expandedHeight: 100,
                  floating: false,
                  pinned: true,
                  leading: Icon(Icons.arrow_back),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    titlePadding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                    title: ValueListenableBuilder(
                      valueListenable: _titlePaddingNotifier,
                      builder: (context, value, child) {
                        print("------------------>>> $value");
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: value),
                          child: Text("Title", style: TextStyle(color: Colors.black)),
                        );
                      },
                    ),
                    background: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                  )),
            ];
          },
          body: Text("Body text")),
    );
  }
}

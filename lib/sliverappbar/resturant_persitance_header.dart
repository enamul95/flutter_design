import 'package:flutter/material.dart';

class ResturantPersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;

  ResturantPersistentHeader({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 160.0,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        elevation: 5.0,
        child: widget,
        //child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 160.0;

  @override
  double get minExtent => 160.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

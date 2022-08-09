// ignore_for_file: file_names

import 'package:flutter/material.dart';



class SearchBoxDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent
      ) =>
      const InkWell();



  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}



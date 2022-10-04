import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  final Widget Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final Axis scrollDirection;
  const ListViewBuilder({
    Key? key,
    required this.itemCount,
    this.scrollDirection = Axis.horizontal,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      scrollDirection: scrollDirection,
      physics: const BouncingScrollPhysics(),
      itemBuilder: itemBuilder,
    );
  }
}

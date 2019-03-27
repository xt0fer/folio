import 'package:folios/gen/folio.pb.dart';
//import 'package:folios/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class TagDetails extends StatelessWidget {
  TagDetails({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Tag item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      children: [
        Text(
          item?.label ?? 'No item selected!',
          style: textTheme.headline,
        ),
        Text(
          item?.desc ?? 'Please select one on the left.',
          style: textTheme.subhead,
        ),
      ],
    );

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Center(child: content),
    );
  }
}

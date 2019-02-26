import 'package:folios/gen/folio.pb.dart';
//import 'package:folios/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class UserDetails extends StatelessWidget {
  UserDetails({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final User item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      children: [
        Text(
          item?.firstname ?? 'No item selected!',
          style: textTheme.headline,
        ),
        Text(
          item?.lastname ?? 'Please select one on the left.',
          style: textTheme.subhead,
        ),
        Text(
          item?.email ?? '- -',
          style: textTheme.subhead,
        ),
      ],
    );

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.firstname + " "+ item.lastname),
      ),
      body: Center(child: content),
    );
  }
}

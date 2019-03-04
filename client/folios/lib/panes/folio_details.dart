import 'package:folios/gen/folio.pb.dart';
//import 'package:folios/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class FolioDetails extends StatelessWidget {
  FolioDetails({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Folio item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = new Card(
      child: new Container(
        child: new Column(
          children: <Widget>[
            Text(
              item?.name ?? 'No item selected!',
              style: textTheme.headline,
            ),
            Text(
              item?.desc ?? 'Please select one on the left.',
              style: textTheme.subhead,
            ),
          ],
        ),
      ),
    );

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(child: content),
    );
  }
}

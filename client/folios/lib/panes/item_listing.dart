import 'package:folios/panes/item.dart';
import 'package:flutter/material.dart';
import 'package:folios/panes/item_details.dart';
import 'package:meta/meta.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    @required this.itemSelectedCallback,
    this.selectedItem,
  });

  final ValueChanged<Item> itemSelectedCallback;
  final Item selectedItem;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items.map((item) {
        return ListTile(
          title: Text(item.title),
          onTap: () => itemSelectedCallback(item),
          selected: selectedItem == item,
        );
      }).toList(),
    );
  }
}

Widget itemListing(BuildContext context) {
  return ItemListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ItemDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },
    );
}

Widget itemRow(Item selItem, ValueChanged<Item> cback) {
  return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              itemSelectedCallback: cback,
              selectedItem: selItem,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: ItemDetails(
            isInTabletLayout: true,
            item: selItem,
          ),
        ),
      ],
    );
}
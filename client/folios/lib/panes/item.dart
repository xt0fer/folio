import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.title,
    @required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final List<Item> items = <Item>[
  Item(
    title: 'First Folio',
    subtitle: 'This is the first item.',
  ),
  Item(
    title: 'Taxes',
    subtitle: 'This is the second item.',
  ),
  Item(
    title: 'Insurance',
    subtitle: 'This is the third item.',
  ),
];
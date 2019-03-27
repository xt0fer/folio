import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:folios/main.dart';
import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/panes/tag_details.dart';
//import 'package:grpc/grpc.dart';

class TagListing extends StatefulWidget {
  TagListing({
    @required this.itemSelectedCallback,
    this.selectedTag,
    this.title
  });

// class TagListPage extends StatefulWidget {
//   TagListPage({Key key, this.title}) : super(key: key);

  final String title;

  final ValueChanged<Tag> itemSelectedCallback;
  final Tag selectedTag;

  @override
  _TagListPageState createState() => _TagListPageState();
}

class _TagListPageState extends State<TagListing> {

  List<Tag> tags = new List<Tag>();

  @override
  void initState() {

    final _ = TheApp.client.listTag(new ListTagRequest()).then((dynamic res) async {
      var lr = await res.results;
      setState(() => this.tags = lr); 
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return tags.isEmpty ? Center(child: Text('No Categories Found!')) :ListView(
      children: tags.map((item) {
        return ListTile(
          leading: new Icon(Icons.folder),
          title: Text(item.label),
          onTap: () => widget.itemSelectedCallback(item),
          selected: widget.selectedTag == item,
        );
      }).toList(),
    );
  }
}

Widget tagListing(BuildContext context) {
  return TagListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return TagDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },
    );
}

Widget tagRow(Tag selTag, ValueChanged<Tag> cback) {
  return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: TagListing(
              itemSelectedCallback: cback,
              selectedTag: selTag,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: TagDetails(
            isInTabletLayout: true,
            item: selTag,
          ),
        ),
      ],
    );
}
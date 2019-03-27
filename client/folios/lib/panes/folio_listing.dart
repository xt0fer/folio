import 'package:folios/master_detail_container.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:folios/main.dart';
import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/panes/folio_details.dart';
//import 'package:grpc/grpc.dart';

class FolioListing extends StatefulWidget {
  FolioListing({
    @required this.itemSelectedCallback,
    this.selectedFolio,
    this.title
  });

// class FolioListPage extends StatefulWidget {
//   FolioListPage({Key key, this.title}) : super(key: key);

  final String title;

  final ValueChanged<Folio> itemSelectedCallback;
  final Folio selectedFolio;

  @override
  _FolioListPageState createState() => _FolioListPageState();
}

class _FolioListPageState extends State<FolioListing> {

  List<Folio> folios = new List<Folio>();

  @override
  void initState() {

    final _ = TheApp.client.listFolio(new ListFolioRequest()).then((dynamic res) async {
      var lr = await res.results;
      setState(() => this.folios = lr); 
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return folios.isEmpty ? Center(child: Text('No Folios Found!')) : ListView(
      children: folios.map((item) {
        return ListTile(
          leading: new Icon(Icons.folder),
          title: Text(item.name),
          onTap: () => widget.itemSelectedCallback(item),
          selected: widget.selectedFolio == item,
        );
      }).toList(),
    );
  }
}

Widget folioListing(BuildContext context) {
  return FolioListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return FolioDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },
    );
}

Widget folioRow(Folio selFolio, ValueChanged<Folio> cback) {
  return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: FolioListing(
              itemSelectedCallback: cback,
              selectedFolio: selFolio,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: FolioDetails(
            isInTabletLayout: true,
            item: selFolio,
          ),
        ),
      ],
    );
}
import 'package:folios/master_detail_container.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:folios/main.dart';
import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/panes/note_details.dart';
//import 'package:grpc/grpc.dart';

class NoteListing extends StatefulWidget {
  NoteListing({
    @required this.itemSelectedCallback,
    this.selectedNote,
    this.title
  });

// class NoteListPage extends StatefulWidget {
//   NoteListPage({Key key, this.title}) : super(key: key);

  final String title;

  final ValueChanged<Note> itemSelectedCallback;
  final Note selectedNote;

  @override
  _NoteListPageState createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListing> {

  List<Note> folios = new List<Note>();

  @override
  void initState() {

    final _ = TheApp.client.listNote(new ListNoteRequest()).then((dynamic res) async {
      print("results: ${res.toString()} ");
      var lr = await res.results;
      // for (var i in lr) {
      //   this.folios.add(i);
      // }
      print("list user worked. ${this.folios.length} ");
      setState(() => this.folios = lr); 
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: folios.map((item) {
        return ListTile(
          leading: new Icon(Icons.folder),
          title: Text(item.name),
          onTap: () => widget.itemSelectedCallback(item),
          selected: widget.selectedNote == item,
        );
      }).toList(),
    );
  }
}

Widget noteListing(BuildContext context) {
  return NoteListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return NoteDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },
    );
}

Widget noteRow(Note selNote, ValueChanged<Note> cback) {
  return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: NoteListing(
              itemSelectedCallback: cback,
              selectedNote: selNote,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: NoteDetails(
            isInTabletLayout: true,
            item: selNote,
          ),
        ),
      ],
    );
}
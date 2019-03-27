//import 'dart:math';

import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/panes/folio_listing.dart';
import 'package:folios/gen/folio.pb.dart';
import 'package:folios/panes/item.dart';
import 'package:folios/panes/item_listing.dart';
import 'package:flutter/material.dart';
import 'package:folios/panes/user_listing.dart';
import 'package:folios/panes/note_listing.dart';
import 'package:folios/panes/tag_listing.dart';
import 'package:folios/panes/register_form.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

enum Recordz { folio, user, share, tag, note, reggie, knownot }
//final gaga = Map();

class MasterDetailContainer extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Folios", Icons.folder),
    new DrawerItem("Categories", Icons.bookmark),
    new DrawerItem("People", Icons.people),
    new DrawerItem("Notes", Icons.note),
    new DrawerItem("Register", Icons.receipt),
    //new DrawerItem("Shares", Icons.share),
  ];

  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kTabletBreakpoint = 600;

  int _selectedDrawerIndex = 0;

// scrolling of Drawer needed.
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Recordz.folio; //new FolioFragment();
      case 1:
        return Recordz.tag; //new ItemListing();
      case 2:
        return Recordz.user; //new ItemListing();
      case 3:
        return Recordz.note; //new ItemListing();
      case 4:
        return Recordz.reggie; //new ItemListing();

      // case 4:
      //return Recordz.share; //new ItemListing();

      default:
        return Recordz.knownot; //new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  Item _selectedItem;
  Folio _selectedFolio;
  User _selectedUser;
  Note _selectedNote;

  Widget _buildMobileLayout(Recordz kind) {
    if (kind == Recordz.folio) {
      return folioListing(context);
    }
    if (kind == Recordz.user) {
      return userListing(context);
    }
    if (kind == Recordz.note) {
      return noteListing(context);
    }
    if (kind == Recordz.tag) {
      return tagListing(context);
    }
    if (kind == Recordz.reggie) {
      return RegisterForm();
    }

    return itemListing(context);
  }

  Widget _buildTabletLayout(Recordz kind) {
    if (kind == Recordz.folio) {
      return folioRow(_selectedFolio, ((item) {
        setState(() {
          _selectedFolio = item;
        });
      }));
    }
    if (kind == Recordz.user) {
      return userRow(_selectedUser, ((item) {
        setState(() {
          _selectedUser = item;
        });
      }));
    }
    if (kind == Recordz.note) {
      return noteRow(_selectedNote, ((item) {
        setState(() {
          _selectedNote = item;
        });
      }));
    }
    return itemRow(_selectedItem, ((item) {
      setState(() {
        _selectedItem = item;
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    Widget content;
    var shortestSide = MediaQuery.of(context).size.width;

    if (shortestSide < kTabletBreakpoint) {
      content = _buildMobileLayout(_getDrawerItemWidget(_selectedDrawerIndex));
    } else {
      content = _buildTabletLayout(_getDrawerItemWidget(_selectedDrawerIndex));
    }

    return Scaffold(
      appBar: AppBar(
        //title: Text('Master Account Title'),
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Kristofer"),
              accountEmail: const Text('kr@example.com'),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: content,
    );
  }
}

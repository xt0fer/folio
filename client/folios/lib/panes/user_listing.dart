import 'package:folios/master_detail_container.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:folios/main.dart';
import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/panes/user_details.dart';
//import 'package:grpc/grpc.dart';

class UserListing extends StatefulWidget {
  UserListing({
    @required this.itemSelectedCallback,
    this.selectedUser,
    this.title
  });

// class UserListPage extends StatefulWidget {
//   UserListPage({Key key, this.title}) : super(key: key);

  final String title;

  final ValueChanged<User> itemSelectedCallback;
  final User selectedUser;

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListing> {

  List<User> folios = new List<User>();

  @override
  void initState() {

    final _ = TheApp.client.listUser(new ListUserRequest()).then((dynamic res) async {
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
          title: Text(item.firstname + " "+ item.lastname),
          onTap: () => widget.itemSelectedCallback(item),
          selected: widget.selectedUser == item,
        );
      }).toList(),
    );
  }
}

Widget userListing(BuildContext context) {
  return UserListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return UserDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },
    );
}

Widget userRow(User selUser, ValueChanged<User> cback) {
  return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: UserListing(
              itemSelectedCallback: cback,
              selectedUser: selUser,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: UserDetails(
            isInTabletLayout: true,
            item: selUser,
          ),
        ),
      ],
    );
}
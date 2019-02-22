import 'package:folios/folio.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:folios/user_detail_page.dart';
import 'package:grpc/grpc.dart';

class UserListPage extends StatefulWidget {
  UserListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  // List lessons;
  List<User> users = new List<User>();

  @override
  void initState() {
    //lessons = getLessons();
    //users = client.list
    final channel = new ClientChannel('127.0.0.1',
          port: 8081,
          options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));
    final client = new FolioServiceClient(channel,
          options: new CallOptions(timeout: new Duration(seconds: 30)));
      print("channel ${channel} ");
      print("client ${client} ");
    final _ = client.listUser(new ListUserRequest()).then((dynamic res) async {
      print("results: ${res.toString()} ");
      var lr = await res.results;
      // for (var i in lr) {
      //   this.users.add(i);
      // }
      print("list user worked. ${this.users.length} ");
      setState(() => this.users = lr); 
    });
    //print("foo: ${foo}");
    // final f = new ReadUserRequest();
    // f.id = 1;
    // final u1 = client.readUser(f).then((ReadUserResponse res) async {
    //  print("results: ${res.toString()} ");
    //   var u = await res.result;
    //   this.users.add(u);
    //   print("read user worked. ${this.users.length} ${u} ");
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ListTile makeListTile(User user) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.folder_open, color: Colors.white),
          ),
          title: Text(
            user.email,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              // Expanded(
              //     flex: 1,
              //     child: Container(
              //       // tag: 'hero',
              //       child: LinearProgressIndicator(
              //           backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
              //           value: lesson.indicatorValue,
              //           valueColor: AlwaysStoppedAnimation(Colors.green)),
              //     )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(user.firstname,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserDetailPage(user: user)));
          },
        );

    Card makeCard(User user) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(user),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(users[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.folder, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.collections, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.people, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

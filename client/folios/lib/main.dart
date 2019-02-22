import 'package:flutter/material.dart';
import 'package:folios/user_list_page.dart';
import 'package:folios/default_page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Folios',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),
      initialRoute: '/users',
      routes: {
        '/' : (context) => DefaultPage(),
        '/users' :(context) => UserListPage(title: 'Users'),
      }
      // home: DetailPage(),
    );
  }
}

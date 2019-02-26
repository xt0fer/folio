import 'package:flutter/material.dart';
import 'package:folios/first/user_list_page.dart';


class DefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('You Fool'),
          onPressed: () {
            
            },
        ),
      ),
    );
  }
}
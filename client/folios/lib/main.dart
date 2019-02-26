import 'package:folios/gen/folio.pbgrpc.dart';
import 'package:folios/master_detail_container.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

void main() => runApp(TheApp());

class TheApp extends StatelessWidget {
  static final channel = new ClientChannel('127.0.0.1',
          port: 8081,
          options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));
  static final client = new FolioServiceClient(channel,
          options: new CallOptions(timeout: new Duration(seconds: 30)));
  // print("channel $channel ");
  // print("client $client ");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Folios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MasterDetailContainer(),
    );
  }
}
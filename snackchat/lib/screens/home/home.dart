import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/chatroomCard.dart';
import 'package:snackchat/models/user.dart';
import 'package:snackchat/screens/home/chatroomsList.dart';
import 'package:snackchat/screens/home/navgation_drawer.dart';
import 'package:snackchat/services/database.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //to get the uid
    final user = Provider.of<CustomUser?>(context);

    return StreamProvider<List<ChatroomCard>?>.value(
      value: DatabaseService(user!.uid).chatroomsListStream,
      //catchError: (_, __) => null,
      initialData: null,
      child: Scaffold(
        drawer: AppDrawer(),
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          title: Text(
            'SnackChat',
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: ChatroomsList(),
      ),
    );
  }
}

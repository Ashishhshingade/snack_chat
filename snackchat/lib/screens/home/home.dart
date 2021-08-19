import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:snackchat/services/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        title: Text('SnackChat', textAlign: TextAlign.center,),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(padding: EdgeInsets.all(20),
          child: Column(children: [
            ListTile(tileColor: Colors.white,
              leading: CircleAvatar(),
              title: Text('pizza'),
              subtitle: Text('i just ate pizza'),),
            TextButton(onPressed: (){_auth.signOut();}, child: Text('signout'))
          ],)),
    );
  }
}

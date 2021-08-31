import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      tileColor: Colors.white,
      leading: CircleAvatar(),
      trailing: Icon(Icons.arrow_right_outlined),
      title: Text(_listTile[0].title),
      subtitle: Text('i just ate pizza'),
    ));
  }
}

class ListTileAttributes {
  String imgURL;
  String title;
  String subtitle;
  ListTileAttributes(
      {required this.imgURL, required this.title, required this.subtitle});
}

final List _listTile = [
  ListTileAttributes(imgURL: '', title: '', subtitle: ''),
  ListTileAttributes(imgURL: '', title: '', subtitle: ''),
];

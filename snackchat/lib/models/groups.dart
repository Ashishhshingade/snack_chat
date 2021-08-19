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
      title: Text('pizza'),
      subtitle: Text('i just ate pizza'),
    ));
  }
}

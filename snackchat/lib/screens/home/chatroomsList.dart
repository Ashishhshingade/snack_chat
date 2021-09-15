import 'package:flutter/material.dart';
import 'package:snackchat/models/chatroomCard.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/screens/home/chatroomTile.dart';

class ChatroomsList extends StatefulWidget {
  const ChatroomsList({Key? key}) : super(key: key);

  @override
  _ChatroomsListState createState() => _ChatroomsListState();
}

class _ChatroomsListState extends State<ChatroomsList> {
  @override
  Widget build(BuildContext context) {
    final chatroomsList = Provider.of<List<ChatroomCard>?>(context);
    chatroomsList!.forEach((element) {
      print(element.chatroomName);
      print(element.chatroomIcon);
    });

    return ListView.builder(
      itemCount: chatroomList.length,
      itemBuilder: (context, index) {
        return ChatroomTile(chatroom: chatroomList[index]);
      },
    );
  }
}

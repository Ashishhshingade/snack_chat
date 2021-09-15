import 'package:flutter/material.dart';
import 'package:snackchat/models/chatroomCard.dart';

class ChatroomTile extends StatelessWidget {
  ChatroomCard chatroom;
  ChatroomTile({required this.chatroom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(25, 6, 25, 0),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(chatroom.chatroomIcon),
          ),
          title: Text(
            chatroom.chatroomName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          trailing: Icon(Icons.arrow_right_outlined),
          hoverColor: Colors.amberAccent,
        ),
      ),
    );
  }
}

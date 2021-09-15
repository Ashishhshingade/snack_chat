import 'package:flutter/material.dart';
import 'package:snackchat/services/database.dart';

class ChatroomCard {
  String chatroomName;
  //String description;
  String chatroomIcon;
  ChatroomCard({
    required this.chatroomName,
    required this.chatroomIcon,
  });
}

final List chatroomList = [
  ChatroomCard(
      chatroomName: 'Pizza', chatroomIcon: 'assets/chat_icons/pizza.png'),
  ChatroomCard(
      chatroomName: 'Maggie', chatroomIcon: 'assets/chat_icons/maggie.png'),
  ChatroomCard(
      chatroomName: 'Burger', chatroomIcon: 'assets/chat_icons/burger.png'),
  ChatroomCard(
      chatroomName: 'Sphagetti',
      chatroomIcon: 'assets/chat_icons/spaghetti.png'),
  ChatroomCard(
      chatroomName: 'Prawns', chatroomIcon: 'assets/chat_icons/prawns.jpg'),
  ChatroomCard(
      chatroomName: 'Vada Pav', chatroomIcon: 'assets/chat_icons/vada.png')
];

//uploading all chatroom list to the firestore chatroom list doc

class ChatTiles extends StatefulWidget {
  const ChatTiles({Key? key}) : super(key: key);

  @override
  _ChatTilesState createState() => _ChatTilesState();
}

class _ChatTilesState extends State<ChatTiles> {
  @override
  Widget build(BuildContext context) {
    DatabaseService('').uploadChatroomList(chatroomList);
    return Container();
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/user.dart';

class Profile extends StatefulWidget {
  final String emailId;
  const Profile({Key? key, required this.emailId}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //get info of user to show personalised data

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Snacker ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar/1.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Text(
              'Username',
              style:
                  TextStyle(letterSpacing: 2, color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'username',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Age',
              style:
                  TextStyle(letterSpacing: 2, color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '0',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[50],
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.emailId,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

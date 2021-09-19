import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/user.dart';
import 'package:snackchat/screens/home/profile.dart';
import 'package:snackchat/services/auth.dart';
import 'package:snackchat/shared/under_construct.dart';
import 'package:snackchat/services/database.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key, child}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    //to use auth services from auth.dart
    AuthService _auth = AuthService();

    //get info of user to show personalised data
    final user = Provider.of<CustomUser?>(context);

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.grey[850]),
      //This will change the drawer background to grey.other styles
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[900]),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/avatar/1.jpg"),
                          radius: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'username',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Text(
                      user!.emailId,
                      //using user (CustomUser?) to get email id using provider
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              hoverColor: Colors.white,
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text('Profile',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(
                              emailId: user.emailId.toString(),
                            )));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text('Notifications',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UnderConstruct(header: 'Notifications')));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text('Settings',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UnderConstruct(header: 'Settings')));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/user.dart';

class Drawer extends StatefulWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(
        context); //get info of user to show personalised data
    return Drawer();
  }
}

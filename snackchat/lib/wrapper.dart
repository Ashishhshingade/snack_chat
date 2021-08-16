import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/user.dart';
import 'package:snackchat/screens/home/home.dart';
import 'package:snackchat/screens/login/authenticate.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    print(user);

    if (user != null) {
      return Home();
    } else {
      return Authenticate();
    }
  }
}

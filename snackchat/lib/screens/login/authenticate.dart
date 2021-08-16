import 'package:flutter/material.dart';
import 'package:snackchat/models/introslides.dart';
import 'package:snackchat/screens/login/loginslides.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return LoginInfoSlidesView();
  }
}

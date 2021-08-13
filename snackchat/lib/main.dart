import 'package:flutter/material.dart';
import 'package:snackchat/models/introslides.dart';
import 'package:snackchat/screens/login/loginslides.dart';
import 'package:snackchat/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginInfoSlidesView());
  }
}

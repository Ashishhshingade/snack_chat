import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/models/user.dart';
import 'package:snackchat/screens/home/home.dart';
import 'package:snackchat/screens/login/authenticate.dart';
import 'package:snackchat/screens/login/loginslides.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    //actively listening to stream of return type CustomUser?
    final user = Provider.of<CustomUser?>(context);

    print(user);
    print('wrapper class is executing');

    return user==null?LoginInfoSlidesView():Home();
}}

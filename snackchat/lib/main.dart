import 'package:flutter/material.dart';
import 'package:snackchat/models/user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:snackchat/services/auth.dart';

import 'package:snackchat/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //neccesary step to integrate with firebase
  //providing StreamProvider listening to AuthService().userStream here so later wrapper class can get provider.of(context)
  //to see if user is logged in or not
  runApp(StreamProvider<CustomUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().userStream,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wrapper());
  }
}

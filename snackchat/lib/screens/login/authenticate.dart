import 'package:flutter/material.dart';
import 'package:snackchat/screens/login/register.dart';
import 'package:snackchat/screens/login/sign_in.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  PageController _pagecontroller = PageController(initialPage: 0);

  bool signIn = true;
  void toggleView() {
    //print(showSignIn.toString());
    setState(() {
      signIn = !signIn;
      _pagecontroller.animateToPage(signIn ? 0 : 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pagecontroller,
      children: [
        SignIn(toggleView: toggleView),
        Register(toggleView: toggleView),
      ],
    );
  }
}

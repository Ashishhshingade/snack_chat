import 'package:flutter/material.dart';
import 'package:snackchat/models/introslides.dart';

class LoginInfoSlidesView extends StatefulWidget {
  const LoginInfoSlidesView({Key? key}) : super(key: key);

  @override
  _LoginInfoSlidesViewState createState() => _LoginInfoSlidesViewState();
}

class _LoginInfoSlidesViewState extends State<LoginInfoSlidesView> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      body: Container(
        //color: Colors.black,
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            SlideItems(index: 0),
            SlideItems(index: 1),
            SlideItems(index: 2)
          ],
        ),
      ),
    );
  }
}

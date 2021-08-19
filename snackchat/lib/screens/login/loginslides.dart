import 'package:flutter/material.dart';
import 'package:snackchat/models/introslides.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:snackchat/screens/login/authenticate.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Authenticate(),
                    ));
              },
              child: Text('login/sign up'))
        ],
      ),
      body: Container(
        //color: Colors.black,
        child: PageIndicatorContainer(
          length: 5,
          indicatorColor: Colors.grey,
          indicatorSelectorColor: Colors.blue,
          shape: IndicatorShape.circle(size: 12),
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              //for(int i =0 , i<5,i++){SlideItems(index: i,)}
              SlideItems(index: 0),
              SlideItems(index: 1),
              SlideItems(index: 2),
              SlideItems(index: 3),
              SlideItems(index: 4)
            ],
          ),
        ),
      ),
    );
  }
}

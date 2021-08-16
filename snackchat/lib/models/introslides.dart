import 'package:flutter/material.dart';
import 'package:snackchat/screens/login/sign_in.dart';

class Slides {
  String imgURL;
  String title;
  String description;

  Slides(
      {required this.imgURL, required this.title, required this.description});
}

final List loginSlideList = [
  Slides(
      imgURL: 'assets/images/chat.png',
      title: 'Chat in groups',
      description: 'just sign in and talk in groups and have fun.'),
  Slides(
      imgURL: 'assets/images/pizza.png',
      title: 'Pizza',
      description: 'Eating Pizza feels like talking about it?'),
  Slides(
      imgURL: 'assets/images/eating.png',
      title: 'Eating somethin?',
      description: 'Feels like talking about it?'),
  Slides(
      imgURL: 'assets/images/recipe.png',
      title: 'Recipe',
      description: 'Have awesome recipe to share ? share here !!'),
  Slides(
      imgURL: 'assets/images/snackdate.png',
      title: 'Snack Date?',
      description: 'Have your snack date here !!')
];

class SlideItems extends StatelessWidget {
  const SlideItems({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
              child: index == loginSlideList.length
                  ? Text('login/sign up')
                  : Text('skip'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
              child: Container(
                child: Image(
                    image: AssetImage(
                      loginSlideList[index].imgURL,
                    ),
                    width: size.width * 0.75),
              ),
            )),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loginSlideList[index].title,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(loginSlideList[index].description),
                    ],
                  ),
                ),
              ),
            ),
            //  Row(

            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     for(int i=0 ; i < index ;i++)
            //       index==i?Dots(true):Dots(false)
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
      imgURL: 'assets/images/burger.png',
      title: 'burger',
      description: 'Eating burger with fries feels like talking about it'),
  Slides(
      imgURL: 'assets/images/pizza.png',
      title: 'Pizza',
      description: 'Eating Pizza feels like talking about it?')
];

class SlideItems extends StatelessWidget {
  const SlideItems({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {},
              child: index == 2 ? Text('login/sign up') : Text('skip'))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Image(
                image: AssetImage(loginSlideList[index].imgURL),
              ),
            ),
          )),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loginSlideList[index].title,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
    );
  }
}

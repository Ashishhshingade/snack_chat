import 'package:flutter/material.dart';

class UnderConstruct extends StatelessWidget {
  String header;
  UnderConstruct({required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(header),
        backgroundColor: Colors.grey[850],
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage('assets/images/under_construction.png'),
          )),
    );
  }
}

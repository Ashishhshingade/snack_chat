import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 2,
        ),
        //spinkit has no ull safety!! gives an error
        // child: SpinKitFadingCircle(
        //   color: Colors.white,
        //   size: 50,
        // ),
      ),
    );
  }
}

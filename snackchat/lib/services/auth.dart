import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //creating instance of Firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      print(userCredential);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sing in with email and password
  //register with email and password
  //sign out
  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:snackchat/services/auth.dart';
import 'package:snackchat/shared/backgrounds/login_background.dart';
import 'package:snackchat/shared/constants.dart';
import 'package:snackchat/shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView; //declaring toggleView
  SignIn(
      {required this.toggleView}); //constructor to get toggleview from authenticate

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';
  String error = '';

  //to access the methods from sevices/auth.dart files
  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading
        ? Loading()
        : Scaffold(
            body: Background(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                //I want to be as big as my parent allows (double.infinity)
                height: size.height,
                //I want to be as big as the screen (MediaQuery).
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Expanded(
                        child: Center(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/images/login.png'),
                          width: size.width * 0.85,
                        ),
                      ),
                    )),
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextFormField(
                                cursorColor: kPrimaryColor,
                                decoration: textInputDecoration.copyWith(
                                  hintText: 'email Id',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                validator: (val) => val!.isEmpty
                                    ? 'Enter an email address'
                                    : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                obscureText: true,
                                cursorColor: kPrimaryColor,
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: kPrimaryColor,
                                    )),
                                validator: (val) => val!.length < 6
                                    ? 'Password must be of 6 char'
                                    : null,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                              ),
                              SizedBox(height: 5),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: size.width * 0.8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(29),
                                  child: FlatButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    color: kPrimaryColor,
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() => loading = true);
                                        dynamic result = await _auth
                                            .signInWithEmailAndPassword(
                                                email, password);
                                        if (result == null) {
                                          setState(() {
                                            loading = false;
                                            error =
                                                'Could not sign in with those credentials';
                                          });
                                        } else {
                                          setState(() {
                                            Navigator.pop(
                                                context); //necessary step to remove this page from the stack
                                            //otherwise sign page will be shown on the screen
                                            loading = false;
                                          });
                                        }
                                        //print(error);
                                        error = '';
                                      }
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style:
                                          TextStyle(color: kPrimaryLightColor),
                                    ),
                                  ),
                                ),
                              ),
                              FlatButton(
                                child: Text(
                                  "New user? Create Account",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blue[700]),
                                ),
                                onPressed: () => widget.toggleView(),
                              )
                            ],
                          )),
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              ),
            ),
          ));
  }
}

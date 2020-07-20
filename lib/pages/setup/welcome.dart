import 'package:carwashapp/pages/setup/signIn.dart';
import 'package:carwashapp/pages/setup/signUp.dart';
import 'package:flutter/material.dart';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to car wash app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
              onPressed: navigateToSignIn,
              child: Text('Login'),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }
  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
  }
}

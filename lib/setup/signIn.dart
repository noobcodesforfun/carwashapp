import 'package:carwashapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email,_password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Please type your email';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
              TextFormField(
                validator: (input){
                  if(input.length<6){
                    return 'Please Enter Valid Password';
                  }
                },
                onSaved: (input) => _password= input,
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                obscureText: true,
              ),
              RaisedButton(
                  onPressed:signIn,
                  child: Text('Sign In'),
              )
            ],
          )
      ),
    );
  }
  Future<void> signIn() async {
    final formSate = _formkey.currentState;
    if(formSate.validate()){
      formSate.save();
      try{
        FirebaseUser user = (await FirebaseAuth.instance.
        signInWithEmailAndPassword(email: _email, password: _password))
            .user;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(user: user)));
      }
      catch(e){
        print(e.message);
      }
    }
  }
}
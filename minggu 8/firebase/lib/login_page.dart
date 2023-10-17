import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase/sign_in.dart';
import 'package:firebase/first_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150,),
              SizedBox(height: 50,),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _signInButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      side: BorderSide(color: Colors.grey),
    ),
    onPressed: () {
      signInWithGoogle().then((result){
        if (result != null){
          Navigator.of(context as BuildContext).push(
            MaterialPageRoute(
              builder: (context) {
                return FirstScreen();
              },
            ),
          );
        }
      },);
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/google_logo,png"), height: 35.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
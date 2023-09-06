import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text('Show Alert'),
        onPressed: () {
          showAlertDialog(context);
        }
      ),
    );
  }
}

void showAlertDialog(BuildContext context){
  //set up button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed:() => Navigator.pop(context),
  );

  //set up alert
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  //show dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
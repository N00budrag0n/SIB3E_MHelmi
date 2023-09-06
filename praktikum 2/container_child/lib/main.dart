import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Button")),
        body: Container(
          child: ElevatedButton(
            onPressed: (){},
            child: Text(
              "Button",
              style: TextStyle(fontSize:20)
            ),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[900], //button bg color
            foregroundColor: Colors.white, //text color
            ),
          )
        )
      ),
    );
  }
}

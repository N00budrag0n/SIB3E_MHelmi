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
        appBar: AppBar(title: Text("Contoh Transform")),
        body: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcTg5n_PXQkyRrKBBg4o1dXl_MZXezTXO3T3yUYVTk07y6hiHaD8ronPDYlebwe7SrWPuFMSqlE8REtKxMjGGD5dXm_HYVhrNOqLUXQEiWA'
              ),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
          ),
          height: 200,
          width: 300,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top:30),
          transform: Matrix4.rotationZ(-0.1),
        ),
      ),
    );
  }
}

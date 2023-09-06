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
        appBar: AppBar(title: Text("Contoh Configuration / Decoration")),
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: NetworkImage(
                'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSzEYnmQGmwaytY_ihkZdyaRqo7PrPwkLEgSpyB7bmb2Oz3VIeM9OHRiZh4vCf6WqwL15vsqfHFY-ptBHU'
                ),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 300,
          margin: EdgeInsets.all(20),
        ),
      ),
    );
  }
}

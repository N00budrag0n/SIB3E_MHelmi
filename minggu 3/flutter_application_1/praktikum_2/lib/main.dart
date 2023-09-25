import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Konverter Suhu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  String _newValue = "Kelvin";
  double _result = 0;
  List<String> riwayat = [];

  var listItem = [
    "Kelvin",
    "Reamur"
  ];

  void perhitunganSuhu(){
    setState(() {
      if(_newValue == "Kelvin") {
        _result = _inputUser + 273;
      } else {
        _result = _inputUser * 0.8;
      }
      String tambahRiwayat = '$_inputUser Celcius = $_result ${_newValue}';
      riwayat.add(tambahRiwayat);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Masukkan suhu dalam celcius"),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    onChanged: (text){
                      _inputUser = double.tryParse(text) ?? 0.0;
                    },
                  ),
                ),
                DropdownButton<String>(
                  items:
                    listItem.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  value: _newValue,
                  onChanged: (String? changeValue) {
                    setState(() {
                      _newValue = changeValue!;
                    });
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hasil", style: TextStyle(fontSize: 20),),
                  Text(
                    _result.toStringAsFixed(1),
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  perhitunganSuhu();
                },
                child: Text("Konversi"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: riwayat.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(riwayat[index], textAlign: TextAlign.center,),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

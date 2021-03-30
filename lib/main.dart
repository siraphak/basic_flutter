import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ExchangeRate.dart';

void main() {
  runApp(MyApp());
}

//สร้าง Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ExchangeRate _dataFromAPI;
  @override
  void initState() {
    super.initState();
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    var url =
        Uri.parse('https://api.exchangeratesapi.io/latest?symbols=USD,THB');
    var response = await http.get(url);
    _dataFromAPI = exchangeRateFromJson(response.body); //json => dart object
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("อัตราการแลกเปลี่ยนสกุลเงิน",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [],
        ));
  }
}

import 'package:flutter/material.dart';
import 'MoneyBox.dart';

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
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ", 1000, Colors.lightBlue, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 100, Colors.green, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 10, Colors.red, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("ค้างชำระ", 100, Colors.orange, 100)
            ],
          ),
        ));
  }
}

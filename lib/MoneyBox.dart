import 'package:flutter/material.dart';

//สร้าง container ต้นแบบ
class MoneyBox extends StatelessWidget {
  String title; //ชื่อหมวดหมู่ /รายการ
  double amount; //จำนวนเงิน
  Color color; //สีของกล่อง
  double size; //ขนาดของกล่อง

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              amount.toString(),
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}

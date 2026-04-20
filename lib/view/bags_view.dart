import 'package:flutter/material.dart';
class BagsView extends StatelessWidget {
  const BagsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bags"),
      ),
      body: ListView(
        children: [
          Card(
            color: Color(0xFFf2f2f2),
            child: SizedBox(
              height: 100,
              width: 200,
            child: Center(
              child: Text(
                "Чемодан",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
      ),
      Card(
            color: Color(0xFFf2f2f2),
            child: SizedBox(
              height: 100,
              width: 200,
            child: Center(
              child: Text(
                "Пакет",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
      ),
      Card(
            color: Color(0xFFf2f2f2),
            child: SizedBox(
              height: 100,
              width: 200,
            child: Center(
              child: Text(
                "Рюкзак",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
      ),
    
      ]));
}}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // Set the height of the AppBar
          child: Container(
            color: Colors.orange, // Set the orange color
            child: AppBar(
              title: Text('Grid Layout'),
              centerTitle: true,
              backgroundColor: Colors.transparent, // Make the AppBar background transparent
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.orange),
                    SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.purple),
                    SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

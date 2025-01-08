import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterWidget(name: '-------'),
    );
  }
}

class CounterWidget extends StatefulWidget {
  final String name;
  const CounterWidget({super.key, required this.name});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        backgroundColor: const Color.fromARGB(255, 121, 85, 72),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("###: ${widget.name}"),
            Text("Counter: $counter"),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text("+ Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
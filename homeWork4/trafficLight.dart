import 'package:flutter/material.dart';

void main() {
  runApp(const TrafficLightApp());
}

class TrafficLightApp extends StatelessWidget {
  const TrafficLightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrafficLightScreen(),
    );
  }
}

class TrafficLightScreen extends StatefulWidget {
  const TrafficLightScreen({super.key});

  @override
  _TrafficLightScreenState createState() => _TrafficLightScreenState();
}

class _TrafficLightScreenState extends State<TrafficLightScreen> {
  int _currentLight = 0;

  void _changeLight() {
    setState(() {
      _currentLight = (_currentLight + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Traffic Light Simulator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  _buildTrafficLight(Colors.red, _currentLight == 0),
                  _buildTrafficLight(Colors.yellow, _currentLight == 1),
                  _buildTrafficLight(Colors.green, _currentLight == 2),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeLight,
              child: const Text("เปลี่ยนไฟ"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrafficLight(Color color, bool isActive) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: isActive ? 1.0 : 0.3,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(width: 3, color: Colors.black),
        ),
      ),
    );
  }
}

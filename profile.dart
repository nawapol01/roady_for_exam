import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        backgroundColor: const Color.fromARGB(255, 255, 174, 68),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://png.pngtree.com/thumb_back/fh260/background/20230609/pngtree-portrait-of-anime-hair-on-fire-image_2972675.jpg'), // ใช้รูปจากอินเทอร์เน็ต
                ),
                SizedBox(height: 10),
                Text(
                  'ชื่อ: นวพล อินพุ่ม',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ชื่อเล่น: นัท',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email,
                        color: const Color.fromARGB(255, 255, 134, 68)),
                    SizedBox(width: 5),
                    Text('nutnawa00@gmail.com'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 5),
                    Text('0806636493'),
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

import 'package:flutter/material.dart';

class ans1 extends StatelessWidget {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: (Text(
          'โปรไฟล์ผู้ใช้',
        )),
        backgroundColor: const Color.fromARGB(255, 46, 102, 255),
        elevation: 0,
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
                  'ชื่อผู้ใช้: นวพล อินพุ่ม',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'อีเมล:nutnawa00@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.blue),
                  title: Text("การตั้งค่า"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.password_rounded, color: Colors.blue),
                  title: Text("เปลี่ยนรหัสผ่าน"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.safety_check, color: Colors.blue),
                  title: Text("ความเป็นส่วนตัว"),
                  onTap: () {},
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('แก้ไขโปรไฟล์'),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('ออกจากระบบ'),
                    ),
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

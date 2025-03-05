import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widget"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: const Center(
          child: ProfileCard(
            name: "Nawapol Inphum",
            role: "Student",
            email: "Inphum_n@silpakorn.edu",
            phone: "0806636493",
            imageUrl: "https://cdn-icons-png.flaticon.com/512/1998/1998592.png",
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String email;
  final String phone;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.email,
    required this.phone,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow.shade50,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // รูปโปรไฟล์
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 10),
          // ชื่อและบทบาท
          Text(
            name,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 176, 160, 39)),
          ),
          Text(
            role,
            style: TextStyle(
                fontSize: 16, color: const Color.fromARGB(255, 200, 186, 104)),
          ),
          const SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 211, 216, 147)),
          const SizedBox(height: 8),
          // ข้อมูลการติดต่อ
          ContactInfo(icon: Icons.email, text: email),
          ContactInfo(icon: Icons.phone, text: phone),
        ],
      ),
    );
  }
}

// Widget แสดงข้อมูลการติดต่อ
class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactInfo({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color.fromARGB(255, 188, 174, 71), size: 18),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

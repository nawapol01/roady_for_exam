import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SHARK SPEED'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 249, 157, 20),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // ระยะขอบรอบเนื้อหา
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ส่วนหัว (Header) หมวดสินค้า
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'หมวดหมู่ : New R15/MT15 ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างส่วนหัวกับสินค้า

              // ส่วนรายการสินค้า
              Expanded(
                child: ListView(
                  children: [
                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/d6612742b28bbfad3da6ca53763986cc@resize_w450_nl.webp',
                        'GOLD SUPER CNC บังสเตอร หน้า M SLAZ / R15 เก่า / MT15/ NEW R 15 สีทอง สวยเเละ ถูกที่สุด',
                        '฿254',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/0fe1b0f0c6631fb2d7d0b32a0e26a32f@resize_w450_nl.webp',
                        'กันดีด SHARK POWER สำหรับ MT15/MSLAZ/ R15 /NEWR15',
                        '฿250',
                      ),
                    ),
                    SizedBox(height: 16), // ระยะห่างระหว่างบล็อค

                    _buildProductRow(
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/2f3118a643d07342346078819abbb97f@resize_w450_nl.webp',
                        'ท้ายสั้น พับได้ MT15/ XSR 155 ทรง V2',
                        '฿399',
                      ),
                      _buildProductCard(
                        'https://down-th.img.susercontent.com/file/ab1c13f73edbb31be1814c326d8dd2d0@resize_w450_nl.webp',
                        'ลด สุโค่ย * กันดีด mslaz R15 mt15 new R15 shark power',
                        '฿275',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductRow(Widget card1, Widget card2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [card1, card2],
    );
  }

  Widget _buildProductCard(String imageUrl, String productName, String price) {
    return Container(
      width: 160, // กำหนดความกว้างของบัตรสินค้า
      decoration: BoxDecoration(
        color: Colors.white, // ปรับให้พื้นหลังบล็อคเป็นสีขาว
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // จัดข้อความตรงกลาง
        children: [
          Image.network(
            imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center, // ข้อความชิดกลาง
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              color: const Color.fromARGB(255, 216, 90, 32),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // Row chứa 2 icon trên cùng
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back, size: 30),
                  Icon(Icons.edit, size: 30),
                ],
              ),
            ),
            const Spacer(), // Đẩy nội dung xuống giữa màn hình
            // Avatar
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://i.imgur.com/vwK1GBu.png'),
              backgroundColor: Colors.blue,
            ),
            const SizedBox(height: 20),
            // Tên
            const Text(
              'Pham Quoc KhanhKhanh',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            // Địa chỉ
            const Text(
              'Ho Chi Minh, VN',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

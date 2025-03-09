import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCheckerScreen(),
    );
  }
}

class AgeCheckerScreen extends StatefulWidget {
  @override
  _AgeCheckerScreenState createState() => _AgeCheckerScreenState();
}

class _AgeCheckerScreenState extends State<AgeCheckerScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String result = "";

  void checkAge() {
    String name = _nameController.text;
    int? age = int.tryParse(_ageController.text);
    if (age == null || name.isEmpty) {
      setState(() {
        result = "Vui lòng nhập đầy đủ và chính xác thông tin";
      });
      return;
    }

    String category;
    if (age > 65) {
      category = "Người già";
    } else if (age >= 6) {
      category = "Người lớn";
    } else if (age >= 2) {
      category = "Trẻ em";
    } else {
      category = "Em bé";
    }

    setState(() {
      result = "$name thuộc nhóm: $category";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KIỂM TRA TUỔI")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Họ và tên"),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: "Tuổi"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkAge,
              child: Text("Kiểm tra"),
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

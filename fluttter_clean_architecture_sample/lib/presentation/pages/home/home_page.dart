import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text('Thống kê văn bản'),
            Text('Thống kê phản ánh'),
            Text('Danh sách chỉ đạo văn bản'),
          ],
        ),
      ),
    );
  }
}

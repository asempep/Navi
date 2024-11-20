import 'package:flutter/material.dart';
import 'package:testmap/screen/search/location_search_screen.dart';

class TemporaryHomePage extends StatelessWidget {
  const TemporaryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildPageButton(BuildContext context, String title, Widget page) {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(title),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Temporary Navigation Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 10.0, // 버튼 간격
          runSpacing: 10.0, // 행 간 간격
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationSearchScreen()),
                );
              },
                child: Text("장소검색페이지"),
              )
          ],
        ),
      ),
    );
  }
}

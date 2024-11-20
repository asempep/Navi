import 'package:flutter/material.dart';
import 'package:testmap/common/component/Icons/circle_icon_gps.dart';
import 'circle_icon_fire.dart';
import 'circle_icon_star.dart';

void main() {
  runApp(const CircleIconTestApp());
}

class CircleIconTestApp extends StatelessWidget {
  const CircleIconTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Circle Icon Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleIconStar(), // Display CircleIconStar
              SizedBox(height: 20),
              CircleIconFire(), // Display CircleIconFire
              SizedBox(height: 20),
              CircleIconGPS()
            ],
          ),
        ),
      ),
    );
  }
}
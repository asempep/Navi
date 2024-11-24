import 'package:flutter/material.dart';
import 'package:testmap/common/component/Icons/circle_icon_button.dart';
import 'package:testmap/common/component/custom/custom_list_sample.dart';
import 'package:testmap/common/component/custom/navi_bar.dart';
import 'round_icon_button.dart';
import 'package:flutter/cupertino.dart';

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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleIconButton(
            icon: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.red,
              size: 24,
            ),
            onPressed: () {
              print("Fire button pressed!");
            },
          ),
          const SizedBox(height: 20),
          RoundIconButton(
            text: 'White',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            onPressed: () {
              print('White Button Pressed!');
            },
          ),
          SizedBox(height: 20),
          NaviBar(onPressed: () {
            print("버튼이 눌렸습니다.");
          }),
          SizedBox(height: 20),
          CupertinoButton.filled(
            onPressed: () {print("Filled Button");},
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          CupertinoButton(
            onPressed: () {print("IOS Style");},
            child: const Text('Enabled'),
          ),
          CustomListSample()
        ]),
      ),
    ));
  }
}

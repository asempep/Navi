import 'package:flutter/material.dart';

class CustomListSample extends StatelessWidget {
  const CustomListSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ListView(children: [
        Row(children: [
          Container(),
          Container(),
          Container()
        ],)
      ],

      ),
    );
  }
}

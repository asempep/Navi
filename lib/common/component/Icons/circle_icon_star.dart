import 'package:flutter/material.dart';
import 'package:testmap/common/component/Icons/circle_icon_gps.dart';

class CircleIconStar extends StatelessWidget {
  const CircleIconStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0,5),
            blurRadius: 5,
          )
        ]),
      alignment: Alignment.center,
      child: const Icon(Icons.star, color: Colors.yellow),
    );
  }
}

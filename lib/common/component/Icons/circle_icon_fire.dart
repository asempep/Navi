import 'package:flutter/material.dart';

class CircleIconFire extends StatelessWidget {
  const CircleIconFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      alignment: Alignment.center,
      child: const Icon(Icons.whatshot, color: Colors.white),

    );
  }
}
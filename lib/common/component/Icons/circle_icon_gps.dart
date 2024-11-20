import 'package:flutter/material.dart';

class CircleIconGPS extends StatelessWidget {
  const CircleIconGPS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlue,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      alignment: Alignment.center,
      child: const Icon(
        Icons.gps_fixed, // GPS 아이콘
        color: Colors.grey,
      ),
    );
  }
}

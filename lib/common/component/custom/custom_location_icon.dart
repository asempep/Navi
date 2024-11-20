import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLocationIcon extends StatefulWidget {
  const CustomLocationIcon(String a);

  @override
  State<CustomLocationIcon> createState() => _CustomLocationIconState();
}

class _CustomLocationIconState extends State<CustomLocationIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: 40,
        child: Container(
        ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleIconButton extends StatefulWidget {
  final Icon icon; // 아이콘을 외부에서 지정
  final VoidCallback onPressed; // 버튼 동작

  const CircleIconButton({
    Key? key,
    required this.icon, // 필수 매개변수
    required this.onPressed, // 필수 매개변수
  }) : super(key: key);

  @override
  State<CircleIconButton> createState() => _CircleIconButtonState();
}

class _CircleIconButtonState extends State<CircleIconButton> {
  bool isPressed = false; // Track button press state

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true; // Button is pressed
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false; // Button released
        });
        widget.onPressed(); // Trigger the onPressed callback
      },
      onTapCancel: () {
        setState(() {
          isPressed = false; // Reset state if tap is canceled
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isPressed ? Colors.grey.shade300 : Colors.white,
          // Fixed dynamic color
          // border: Border.all(
          //   color: Colors.grey, // Border color
          //   width: 2.0, // Border width
          // ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: widget.icon, // Use the icon passed from parent
      ),
    );
  }
}


// 예시


// CircleIconButton
// (
// icon: Icon(
// Icons.add,
// color: Colors.green,
// size: 24,
// ),
// onPressed: () {
// print("Add button pressed!");
// },
// )

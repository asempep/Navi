import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  final VoidCallback onPressed; // Callback for button press

  const NaviBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
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
        width: double.infinity, // Full width button
        height: 60, // Height of the button
        decoration: BoxDecoration(
          color: isPressed ? Colors.blue.shade700 : Colors.blue, // Feedback color
          borderRadius: BorderRadius.circular(20), // Rounded edges
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 3),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.directions_walk, // Walking icon
              color: Colors.black, // Icon color
            ),
            SizedBox(width: 8), // Space between icon and text
            Text(
              '안내시작', // Text in the button
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 16, // Font size
                fontWeight: FontWeight.bold, // Font weight
              ),
            ),
          ],
        ),
      ),
    );
  }
}
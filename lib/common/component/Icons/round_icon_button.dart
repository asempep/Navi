import 'package:flutter/material.dart';



class RoundIconButton extends StatelessWidget {
  final String text; // 텍스트 변수
  final Color textColor; // 텍스트 색깔
  final Color backgroundColor; // 버튼 배경색
  final VoidCallback onPressed; // 버튼 동작

  const RoundIconButton({
    Key? key,
    required this.text, // 필수 매개변수로 지정
    required this.textColor, // 필수 매개변수로 지정
    required this.backgroundColor, // 필수 매개변수로 지정
    required this.onPressed, // 필수 매개변수로 지정
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // 버튼 너비
      height: 30, // 버튼 높이
      child: ElevatedButton(
        onPressed: onPressed, // 외부에서 전달된 동작
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // 둥근 모서리
          ),
          backgroundColor: backgroundColor, // 외부에서 전달된 배경색
          padding: EdgeInsets.zero, // 패딩 제거
        ),
        child: Text(
          text, // 외부에서 전달된 텍스트
          style: TextStyle(
            color: textColor, // 외부에서 전달된 텍스트 색깔
            fontSize: 10, // 텍스트 크기
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// 버튼 예시

// RoundIconButton(
// text: 'Blue',
// textColor: Colors.white,
// backgroundColor: Colors.blue,
// onPressed: () {
// print('Blue Button Pressed!');
// },
// ),
// SizedBox(height: 20),
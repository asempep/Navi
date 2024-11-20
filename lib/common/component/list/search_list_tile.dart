import 'package:flutter/material.dart';

class SearchListTile extends StatelessWidget {

  const SearchListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: Colors.grey)), // 외
      ),
      child: ListTile(
        leading: Icon(Icons.abc),
        title: Text("data"),
      ),
    );
  }
}

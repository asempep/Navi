import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testmap/common/component/custom/custom_location_icon.dart';
import 'package:testmap/common/component/list/search_list_tile.dart';

class LocationSearchScreen extends StatefulWidget {
  const LocationSearchScreen({super.key});

  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}
class _LocationSearchScreenState extends State<LocationSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          style: TextStyle(decorationColor: Color(0)),
          decoration: InputDecoration(
            hintText: '장소, 강의실 번호, 강의실 이름 검색',
            border: InputBorder.none,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.3),
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(),
                        Container(child: Chip(label: Text("최근 검색"))),
                        Container(child: Chip(label: Text("최근 검색"))),
                        Container(child: Chip(label: Text("최근 검색"))),
                      ],
                    ),
                    Expanded(child: ListView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.symmetric(horizontal: BorderSide(color: Colors.grey)), // 외
                          ),
                          child: ListTile(
                            leading: Icon(Icons.abc),
                            title: Text("daㅁㅁㅁta"),
                          ),
                        ),
                        SearchListTile(),
                        Container(child: ListTile(leading: Text("data"),)),
                        Container(child: ListTile(leading: Text("data"),)),
                        Container(child: ListTile(leading: Text("data"),)),
                        Container(child: CustomLocationIcon("d"),),
                        Container(child: CustomLocationIcon("d"),)

                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

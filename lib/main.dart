import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlaceSearchScreen(),
    );
  }
}


class PlaceSearchScreen extends StatelessWidget {
  final List<Place> places = [
    Place(icon: Icons.location_on, name: '보건복지과학대학1동'),
    Place(icon: Icons.location_on, name: '학생군사교육단'),
    Place(icon: Icons.location_on, name: '골프실기장'),
    Place(icon: Icons.star, name: 'SE실습실 (7202)', isFavorite: true),
    Place(icon: Icons.location_on, name: '보건복지과학대학1동'),
    Place(icon: Icons.location_on, name: '학생군사교육단'),
    Place(icon: Icons.location_on, name: '보건복지과학대학1동'),
    Place(icon: Icons.location_on, name: '학생군사교육단'),
    Place(icon: Icons.location_on, name: '인성관'),
    Place(icon: Icons.location_on, name: '운동장장'),
    Place(icon: Icons.location_on, name: '용인대 정문'),
    Place(icon: Icons.location_on, name: '용인대 탈출버튼'),
    // 필요한 만큼 더 추가 가능
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('장소 검색'),
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: [
          // 검색창
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // 뒤로 가기 기능
                    },
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '장소, 강의실 번호, 강의실 이름 검색',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 필터 버튼
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipWidget(label: '최근검색', color: Colors.blue),
                FilterChipWidget(label: '즐겨찾기', color: Colors.blue),
                FilterChipWidget(label: '자주 간 장소', color: Colors.blue),
              ],
            ),
          ),

          // 리스트 뷰
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return PlaceItem(place: places[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// 장소 정보를 담는 Place 클래스
class Place {
  final IconData icon;
  final String name;
  final bool isFavorite;

  Place({
    required this.icon,
    required this.name,
    this.isFavorite = false,
  });
}

// 최근검색, 즐찾, 자주간장소
class FilterChipWidget extends StatelessWidget {
  final String label;
  final Color color;

  FilterChipWidget({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      labelPadding: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(4),
      label: Text(label, style: TextStyle(color: Colors.white)),
      backgroundColor: color,
      
      onSelected: (_) {
        print('$label 선택됨');
      },
    );
  }
}

// 개별 장소 아이템을 재사용 가능하게 만든 위젯
class PlaceItem extends StatelessWidget {
  final Place place;

  PlaceItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("장소 선택");
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          children: [
            Icon(place.icon, color: place.isFavorite ? Colors.orange : Colors.grey),
            SizedBox(width: 12),
            Text(
              place.name,
              style: TextStyle(fontSize: 18), // 텍스트 크기 확대
            ),
          ],
        ),
      ),
    );
  }
}
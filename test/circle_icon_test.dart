import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testmap/common/component/Icons/circle_icon_fire.dart';
import 'package:testmap/common/component/Icons/circle_icon_star.dart';

void main() {
  testWidgets('CircleIconStar and CircleIconFire render correctly', (WidgetTester tester) async {
    // Build the widget tree with CircleIconStar and CircleIconFire
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              CircleIconStar(key: Key('circle_icon_star')),
              CircleIconFire(key: Key('circle_icon_fire')),
            ],
          ),
        ),
      ),
    );

    // Verify both widgets are present
    expect(find.byKey(const Key('circle_icon_star')), findsOneWidget);
    expect(find.byKey(const Key('circle_icon_fire')), findsOneWidget);
  });
}
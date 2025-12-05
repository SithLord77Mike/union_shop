import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/main.dart';

void main() {
  group('Home Page Tests', () {
    testWidgets('should display home page with basic elements',
        (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const UnionShopApp());

      // Check that some main hero text is there (we only require it contains "UNION" or "SHOP")
      expect(find.textContaining('UNION', findRichText: true), findsWidgets);

      // Check that the main hero button exists
      expect(find.text('BROWSE PRODUCTS'), findsOneWidget);
    });

    testWidgets('should display product cards', (WidgetTester tester) async {
      await tester.pumpWidget(const UnionShopApp());

      // We just require that at least one ProductCard is present
      expect(find.byType(ProductCard), findsWidgets);
    });

    testWidgets('should display header icons', (WidgetTester tester) async {
      await tester.pumpWidget(const UnionShopApp());

      // Search icon
      expect(find.byIcon(Icons.search), findsWidgets);

      // Account icon (person)
      expect(find.byIcon(Icons.person_outline), findsWidgets);

      // Cart icon (shopping bag)
      expect(find.byIcon(Icons.shopping_bag_outlined), findsWidgets);

      // Menu icon (hamburger)
      expect(find.byIcon(Icons.menu), findsWidgets);
    });

    testWidgets('should display footer', (WidgetTester tester) async {
      await tester.pumpWidget(const UnionShopApp());

      // Footer title contains "Union Shop"
      expect(
        find.textContaining('Union Shop', findRichText: true),
        findsWidgets,
      );

      // Footer body text exists (any text that mentions "Students" is enough)
      expect(
        find.textContaining('Students', findRichText: true),
        findsWidgets,
      );
    });
  });
}

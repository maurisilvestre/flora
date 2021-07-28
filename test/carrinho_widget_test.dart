import 'package:flora/carrinho_lista.dart';
import 'package:flora/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Teste do Carrinho', () {
    pressTapButtonAdd(WidgetTester tester) async {
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
    }

    testWidgets('Deve adicionar um ListTile ao precionar o botão de add',
        (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await pressTapButtonAdd(tester);

      expect(find.byType(ListTile), findsOneWidget);
    });
    testWidgets('Deve testar o tap do ListTile do carrinho',
        (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.byType(ListTile));
      await tester.pump();
    });
  });
}

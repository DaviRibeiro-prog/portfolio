import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';
import 'package:simple_icons/simple_icons.dart';

void main() {
  testWidgets('shows portfolio content on desktop', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(1280, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const PortfolioApp());
    await tester.tap(find.text('PT'));
    await tester.pumpAndSettle();

    expect(find.text('DAVI RIBEIRO'), findsOneWidget);
    expect(find.text('Download CV'), findsOneWidget);
    expect(find.text('Ver projetos'), findsOneWidget);
    expect(find.text('Entre em contato'), findsNothing);
    expect(find.text('Cidadania europeia'), findsNothing);
    expect(find.text('GitHub'), findsAtLeastNWidgets(1));
    expect(find.byIcon(SimpleIcons.github), findsOneWidget);
    expect(find.byType(FaIcon), findsOneWidget);
    expect(find.byIcon(SimpleIcons.gmail), findsOneWidget);

    await tester.tap(find.text('EN'));
    await tester.pumpAndSettle();
    expect(
      find.text('Software Engineer building mobile and web products.'),
      findsOneWidget,
    );

    await tester.tap(find.text('ES'));
    await tester.pumpAndSettle();
    expect(
      find.text('Ingeniero de software creando productos móviles y web.'),
      findsOneWidget,
    );
  });

  testWidgets('shows compact CV action on mobile', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const PortfolioApp());
    await tester.tap(find.text('PT'));
    await tester.pumpAndSettle();

    expect(find.text('D'), findsOneWidget);
    expect(find.text('CV'), findsOneWidget);
    expect(find.text('Download CV'), findsNothing);
  });

  testWidgets('opens and navigates project image gallery', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(1280, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const PortfolioApp());
    await tester.tap(find.text('PT'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Ver galeria').first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Ver galeria').first);
    await tester.pumpAndSettle();

    expect(find.text('1 / 4'), findsOneWidget);
    await tester.tap(find.byTooltip('Próxima imagem'));
    await tester.pumpAndSettle();
    expect(find.text('2 / 4'), findsOneWidget);
  });
}

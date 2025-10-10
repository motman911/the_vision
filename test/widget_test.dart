import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_vision/main.dart';
import 'package:the_vision/providers/theme_provider.dart';

void main() {
  testWidgets('App loads and displays home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const TheVisionApp());
    await tester.pumpAndSettle();

    expect(find.text('The Vision'), findsWidgets);
    expect(find.text('Welcome to The Vision'), findsOneWidget);
  });

  test('ThemeProvider changes theme correctly', () {
    final provider = ThemeProvider();

    expect(provider.themeMode, AppThemeMode.light);

    provider.setTheme(AppThemeMode.dark);
    expect(provider.themeMode, AppThemeMode.dark);

    provider.setTheme(AppThemeMode.blue);
    expect(provider.themeMode, AppThemeMode.blue);

    provider.setTheme(AppThemeMode.green);
    expect(provider.themeMode, AppThemeMode.green);

    provider.setTheme(AppThemeMode.orange);
    expect(provider.themeMode, AppThemeMode.orange);
  });

  testWidgets('Navigation drawer opens and closes', (WidgetTester tester) async {
    await tester.pumpWidget(const TheVisionApp());
    await tester.pumpAndSettle();

    final ScaffoldState state = tester.firstState(find.byType(Scaffold));
    state.openDrawer();
    await tester.pumpAndSettle();

    expect(find.text('Educational Excellence in Rwanda'), findsOneWidget);
    expect(find.text('Services'), findsWidgets);
    expect(find.text('Universities'), findsWidgets);
    expect(find.text('FAQ'), findsWidgets);
    expect(find.text('Gallery'), findsWidgets);
    expect(find.text('Contact'), findsWidgets);
  });

  testWidgets('Theme dialog displays all theme options', (WidgetTester tester) async {
    await tester.pumpWidget(const TheVisionApp());
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.palette));
    await tester.pumpAndSettle();

    expect(find.text('Choose Theme'), findsOneWidget);
    expect(find.text('Light'), findsOneWidget);
    expect(find.text('Dark'), findsOneWidget);
    expect(find.text('Blue'), findsOneWidget);
    expect(find.text('Green'), findsOneWidget);
    expect(find.text('Orange'), findsOneWidget);
  });
}

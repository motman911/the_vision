import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const TheVisionApp(),
    ),
  );
}

class TheVisionApp extends StatelessWidget {
  const TheVisionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'The Vision - Rwanda',
          debugShowCheckedModeBanner: false,
          theme: themeProvider.getTheme(),
          home: const HomeScreen(),
        );
      },
    );
  }
}

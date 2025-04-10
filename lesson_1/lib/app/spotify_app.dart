import 'package:flutter/material.dart';
import 'package:wp_lesson_1/app/widgets/bottom_navigation_container.dart';

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const BottomNavigationContainer(),
    );
  }
}

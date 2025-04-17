import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/api/dio_client.dart';
import 'package:wp_lesson_1/app/widgets/bottom_navigation_container.dart';

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DioClient(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const BottomNavigationContainer(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_3/api/dio_client.dart';
import 'package:lesson_3/pages/todos/todos_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DioClient(),
      child: MaterialApp(
        home: TodosPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_3/api/dio_client.dart';
import 'package:lesson_3/pages/todos/cubits/todos_cubit.dart';
import 'package:lesson_3/pages/todos/widgets/todo_add_dialog.dart';
import 'package:lesson_3/pages/todos/widgets/todo_list.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosCubit(
        client: context.read<DioClient>(),
      )..fetchTodos(),
      child: const TodosScaffold(),
    );
  }
}

class TodosScaffold extends StatelessWidget {
  const TodosScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
      ),
      body: const TodoList(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final todoText = await showDialog(
            context: context,
            builder: (_) => TodoAddDialog(),
          );
          if (todoText != null) {
            context.read<TodosCubit>().addTodo(todoText);
          }
        },
      ),
    );
  }
}

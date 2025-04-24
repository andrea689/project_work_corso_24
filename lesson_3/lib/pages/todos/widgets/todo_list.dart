import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_3/pages/todos/cubits/todos_cubit.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TodosCubit>().state;

    if (state.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.isError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Error inaspettato'),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.read<TodosCubit>().fetchTodos(),
              child: Text('Riprova'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: state.todos.length,
      itemBuilder: (context, index) {
        final todo = state.todos[index];
        return Dismissible(
          key: ValueKey(todo.objectId),
          onDismissed: (_) => context.read<TodosCubit>().deleteTodo(todo),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete),
                SizedBox(width: 16),
              ],
            ),
          ),
          child: CheckboxListTile(
            value: todo.isDone,
            title: Text(todo.text),
            onChanged: (value) {
              context
                  .read<TodosCubit>()
                  .updateTodo(todo.copyWith(isDone: value ?? false));
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_3/api/dio_client.dart';
import 'package:lesson_3/models/todo.dart';
import 'package:lesson_3/pages/todos/cubits/todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final DioClient client;

  TodosCubit({
    required this.client,
  }) : super(TodosState());

  Future<void> fetchTodos() async {
    emit(state.copyWith(
      isLoading: true,
      isError: false,
    ));
    try {
      final response = await client.api.getTodos();
      emit(state.copyWith(
        todos: response.results,
        isLoading: false,
      ));
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isError: true,
        isLoading: false,
      ));
    }
  }

  Future<void> updateTodo(Todo todo) async {
    final objectId = todo.objectId;
    if (objectId == null) {
      throw Exception('Todo id is null');
    }

    try {
      await client.api.updateTodo(objectId, todo);

      final todos = state.todos.map((e) {
        if (e.objectId == objectId) {
          return todo;
        }
        return e;
      }).toList();

      emit(state.copyWith(
        todos: todos,
      ));
    } catch (e) {
      print(e);
    }
  }

  Future<void> addTodo(String todoText) async {
    emit(state.copyWith(
      isLoading: true,
      isError: false,
    ));
    try {
      final todo = Todo(
        text: todoText,
        isDone: false,
      );
      await client.api.addTodo(todo);

      fetchTodos();
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isError: true,
        isLoading: false,
      ));
    }
  }

  Future<void> deleteTodo(Todo todo) async {
    final objectId = todo.objectId;
    if (objectId == null) {
      throw Exception('Todo id is null');
    }

    try {
      await client.api.deleteTodo(objectId);
      final todos = List<Todo>.from(state.todos)..remove(todo);
      emit(state.copyWith(
        todos: todos,
      ));
    } catch (e) {
      print(e);
    }
  }
}

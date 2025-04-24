import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_3/models/todo.dart';

part 'todos.freezed.dart';
part 'todos.g.dart';

@freezed
abstract class Todos with _$Todos {
  const factory Todos({
    required List<Todo> results,
  }) = _Todos;

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);
}

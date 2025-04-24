import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_3/models/todo.dart';

part 'todos_state.freezed.dart';
part 'todos_state.g.dart';

@freezed
abstract class TodosState with _$TodosState {
  const factory TodosState({
    @Default([]) List<Todo> todos,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _TodosState;

  factory TodosState.fromJson(Map<String, dynamic> json) =>
      _$TodosStateFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodosState _$TodosStateFromJson(Map<String, dynamic> json) => _TodosState(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isError: json['isError'] as bool? ?? false,
    );

Map<String, dynamic> _$TodosStateToJson(_TodosState instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'isLoading': instance.isLoading,
      'isError': instance.isError,
    };

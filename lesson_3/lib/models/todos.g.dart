// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todos _$TodosFromJson(Map<String, dynamic> json) => _Todos(
      results: (json['results'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TodosToJson(_Todos instance) => <String, dynamic>{
      'results': instance.results,
    };

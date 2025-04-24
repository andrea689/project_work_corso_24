// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
      objectId: json['objectId'] as String?,
      text: json['text'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'objectId': instance.objectId,
      'text': instance.text,
      'isDone': instance.isDone,
    };

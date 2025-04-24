// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Todos {
  List<Todo> get results;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodosCopyWith<Todos> get copyWith =>
      _$TodosCopyWithImpl<Todos>(this as Todos, _$identity);

  /// Serializes this Todos to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Todos &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'Todos(results: $results)';
  }
}

/// @nodoc
abstract mixin class $TodosCopyWith<$Res> {
  factory $TodosCopyWith(Todos value, $Res Function(Todos) _then) =
      _$TodosCopyWithImpl;
  @useResult
  $Res call({List<Todo> results});
}

/// @nodoc
class _$TodosCopyWithImpl<$Res> implements $TodosCopyWith<$Res> {
  _$TodosCopyWithImpl(this._self, this._then);

  final Todos _self;
  final $Res Function(Todos) _then;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Todos implements Todos {
  const _Todos({required final List<Todo> results}) : _results = results;
  factory _Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);

  final List<Todo> _results;
  @override
  List<Todo> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodosCopyWith<_Todos> get copyWith =>
      __$TodosCopyWithImpl<_Todos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodosToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todos &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'Todos(results: $results)';
  }
}

/// @nodoc
abstract mixin class _$TodosCopyWith<$Res> implements $TodosCopyWith<$Res> {
  factory _$TodosCopyWith(_Todos value, $Res Function(_Todos) _then) =
      __$TodosCopyWithImpl;
  @override
  @useResult
  $Res call({List<Todo> results});
}

/// @nodoc
class __$TodosCopyWithImpl<$Res> implements _$TodosCopyWith<$Res> {
  __$TodosCopyWithImpl(this._self, this._then);

  final _Todos _self;
  final $Res Function(_Todos) _then;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? results = null,
  }) {
    return _then(_Todos(
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodosState {
  List<Todo> get todos;
  bool get isLoading;
  bool get isError;

  /// Create a copy of TodosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodosStateCopyWith<TodosState> get copyWith =>
      _$TodosStateCopyWithImpl<TodosState>(this as TodosState, _$identity);

  /// Serializes this TodosState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodosState &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(todos), isLoading, isError);

  @override
  String toString() {
    return 'TodosState(todos: $todos, isLoading: $isLoading, isError: $isError)';
  }
}

/// @nodoc
abstract mixin class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) _then) =
      _$TodosStateCopyWithImpl;
  @useResult
  $Res call({List<Todo> todos, bool isLoading, bool isError});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._self, this._then);

  final TodosState _self;
  final $Res Function(TodosState) _then;

  /// Create a copy of TodosState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_self.copyWith(
      todos: null == todos
          ? _self.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TodosState implements TodosState {
  const _TodosState(
      {final List<Todo> todos = const [],
      this.isLoading = false,
      this.isError = false})
      : _todos = todos;
  factory _TodosState.fromJson(Map<String, dynamic> json) =>
      _$TodosStateFromJson(json);

  final List<Todo> _todos;
  @override
  @JsonKey()
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  /// Create a copy of TodosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodosStateCopyWith<_TodosState> get copyWith =>
      __$TodosStateCopyWithImpl<_TodosState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodosStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodosState &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), isLoading, isError);

  @override
  String toString() {
    return 'TodosState(todos: $todos, isLoading: $isLoading, isError: $isError)';
  }
}

/// @nodoc
abstract mixin class _$TodosStateCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$TodosStateCopyWith(
          _TodosState value, $Res Function(_TodosState) _then) =
      __$TodosStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Todo> todos, bool isLoading, bool isError});
}

/// @nodoc
class __$TodosStateCopyWithImpl<$Res> implements _$TodosStateCopyWith<$Res> {
  __$TodosStateCopyWithImpl(this._self, this._then);

  final _TodosState _self;
  final $Res Function(_TodosState) _then;

  /// Create a copy of TodosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? todos = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_TodosState(
      todos: null == todos
          ? _self._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

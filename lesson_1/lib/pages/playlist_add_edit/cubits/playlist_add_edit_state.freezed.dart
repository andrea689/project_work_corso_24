// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_add_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaylistAddEditState {
  bool get isLoading;
  bool get isError;
  bool get isSuccess;

  /// Create a copy of PlaylistAddEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaylistAddEditStateCopyWith<PlaylistAddEditState> get copyWith =>
      _$PlaylistAddEditStateCopyWithImpl<PlaylistAddEditState>(
          this as PlaylistAddEditState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaylistAddEditState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isSuccess);

  @override
  String toString() {
    return 'PlaylistAddEditState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess)';
  }
}

/// @nodoc
abstract mixin class $PlaylistAddEditStateCopyWith<$Res> {
  factory $PlaylistAddEditStateCopyWith(PlaylistAddEditState value,
          $Res Function(PlaylistAddEditState) _then) =
      _$PlaylistAddEditStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, bool isError, bool isSuccess});
}

/// @nodoc
class _$PlaylistAddEditStateCopyWithImpl<$Res>
    implements $PlaylistAddEditStateCopyWith<$Res> {
  _$PlaylistAddEditStateCopyWithImpl(this._self, this._then);

  final PlaylistAddEditState _self;
  final $Res Function(PlaylistAddEditState) _then;

  /// Create a copy of PlaylistAddEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isSuccess = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _PlaylistAddEditState implements PlaylistAddEditState {
  const _PlaylistAddEditState(
      {this.isLoading = false, this.isError = false, this.isSuccess = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isSuccess;

  /// Create a copy of PlaylistAddEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaylistAddEditStateCopyWith<_PlaylistAddEditState> get copyWith =>
      __$PlaylistAddEditStateCopyWithImpl<_PlaylistAddEditState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaylistAddEditState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isSuccess);

  @override
  String toString() {
    return 'PlaylistAddEditState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess)';
  }
}

/// @nodoc
abstract mixin class _$PlaylistAddEditStateCopyWith<$Res>
    implements $PlaylistAddEditStateCopyWith<$Res> {
  factory _$PlaylistAddEditStateCopyWith(_PlaylistAddEditState value,
          $Res Function(_PlaylistAddEditState) _then) =
      __$PlaylistAddEditStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, bool isSuccess});
}

/// @nodoc
class __$PlaylistAddEditStateCopyWithImpl<$Res>
    implements _$PlaylistAddEditStateCopyWith<$Res> {
  __$PlaylistAddEditStateCopyWithImpl(this._self, this._then);

  final _PlaylistAddEditState _self;
  final $Res Function(_PlaylistAddEditState) _then;

  /// Create a copy of PlaylistAddEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isSuccess = null,
  }) {
    return _then(_PlaylistAddEditState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

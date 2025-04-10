// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaylistsState {
  List<Playlist> get playlists;

  /// Create a copy of PlaylistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaylistsStateCopyWith<PlaylistsState> get copyWith =>
      _$PlaylistsStateCopyWithImpl<PlaylistsState>(
          this as PlaylistsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaylistsState &&
            const DeepCollectionEquality().equals(other.playlists, playlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(playlists));

  @override
  String toString() {
    return 'PlaylistsState(playlists: $playlists)';
  }
}

/// @nodoc
abstract mixin class $PlaylistsStateCopyWith<$Res> {
  factory $PlaylistsStateCopyWith(
          PlaylistsState value, $Res Function(PlaylistsState) _then) =
      _$PlaylistsStateCopyWithImpl;
  @useResult
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$PlaylistsStateCopyWithImpl<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  _$PlaylistsStateCopyWithImpl(this._self, this._then);

  final PlaylistsState _self;
  final $Res Function(PlaylistsState) _then;

  /// Create a copy of PlaylistsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_self.copyWith(
      playlists: null == playlists
          ? _self.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ));
  }
}

/// @nodoc

class _PlaylistsState implements PlaylistsState {
  const _PlaylistsState({final List<Playlist> playlists = const []})
      : _playlists = playlists;

  final List<Playlist> _playlists;
  @override
  @JsonKey()
  List<Playlist> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  /// Create a copy of PlaylistsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaylistsStateCopyWith<_PlaylistsState> get copyWith =>
      __$PlaylistsStateCopyWithImpl<_PlaylistsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaylistsState &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlists));

  @override
  String toString() {
    return 'PlaylistsState(playlists: $playlists)';
  }
}

/// @nodoc
abstract mixin class _$PlaylistsStateCopyWith<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  factory _$PlaylistsStateCopyWith(
          _PlaylistsState value, $Res Function(_PlaylistsState) _then) =
      __$PlaylistsStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class __$PlaylistsStateCopyWithImpl<$Res>
    implements _$PlaylistsStateCopyWith<$Res> {
  __$PlaylistsStateCopyWithImpl(this._self, this._then);

  final _PlaylistsState _self;
  final $Res Function(_PlaylistsState) _then;

  /// Create a copy of PlaylistsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_PlaylistsState(
      playlists: null == playlists
          ? _self._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ));
  }
}

// dart format on

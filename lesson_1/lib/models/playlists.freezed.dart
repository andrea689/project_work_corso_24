// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Playlists {
  List<Playlist> get results;

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaylistsCopyWith<Playlists> get copyWith =>
      _$PlaylistsCopyWithImpl<Playlists>(this as Playlists, _$identity);

  /// Serializes this Playlists to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Playlists &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'Playlists(results: $results)';
  }
}

/// @nodoc
abstract mixin class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) _then) =
      _$PlaylistsCopyWithImpl;
  @useResult
  $Res call({List<Playlist> results});
}

/// @nodoc
class _$PlaylistsCopyWithImpl<$Res> implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._self, this._then);

  final Playlists _self;
  final $Res Function(Playlists) _then;

  /// Create a copy of Playlists
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
              as List<Playlist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Playlists implements Playlists {
  const _Playlists({required final List<Playlist> results})
      : _results = results;
  factory _Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);

  final List<Playlist> _results;
  @override
  List<Playlist> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaylistsCopyWith<_Playlists> get copyWith =>
      __$PlaylistsCopyWithImpl<_Playlists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaylistsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Playlists &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'Playlists(results: $results)';
  }
}

/// @nodoc
abstract mixin class _$PlaylistsCopyWith<$Res>
    implements $PlaylistsCopyWith<$Res> {
  factory _$PlaylistsCopyWith(
          _Playlists value, $Res Function(_Playlists) _then) =
      __$PlaylistsCopyWithImpl;
  @override
  @useResult
  $Res call({List<Playlist> results});
}

/// @nodoc
class __$PlaylistsCopyWithImpl<$Res> implements _$PlaylistsCopyWith<$Res> {
  __$PlaylistsCopyWithImpl(this._self, this._then);

  final _Playlists _self;
  final $Res Function(_Playlists) _then;

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? results = null,
  }) {
    return _then(_Playlists(
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ));
  }
}

// dart format on

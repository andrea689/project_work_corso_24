// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Playlists _$PlaylistsFromJson(Map<String, dynamic> json) => _Playlists(
      results: (json['results'] as List<dynamic>)
          .map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistsToJson(_Playlists instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Playlist _$PlaylistFromJson(Map<String, dynamic> json) => _Playlist(
      id: json['objectId'] as String?,
      name: json['nome_playlist'] as String,
      user: json['nome_utente'] as String,
      imageUrl: json['copertina'] as String,
    );

Map<String, dynamic> _$PlaylistToJson(_Playlist instance) => <String, dynamic>{
      'objectId': instance.id,
      'nome_playlist': instance.name,
      'nome_utente': instance.user,
      'copertina': instance.imageUrl,
    };

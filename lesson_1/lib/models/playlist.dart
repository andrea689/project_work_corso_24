import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
abstract class Playlist with _$Playlist {
  const factory Playlist({
    @JsonKey(name: 'nome_playlist') required String name,
    @JsonKey(name: 'nome_utente') required String user,
    @JsonKey(name: 'copertura') required String imageUrl,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}

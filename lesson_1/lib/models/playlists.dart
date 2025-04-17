import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_lesson_1/models/playlist.dart';

part 'playlists.freezed.dart';
part 'playlists.g.dart';

@freezed
abstract class Playlists with _$Playlists {
  const factory Playlists({
    required List<Playlist> results,
  }) = _Playlists;

  factory Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);
}

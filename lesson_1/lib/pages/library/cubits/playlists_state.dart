import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wp_lesson_1/models/playlist.dart';

part 'playlists_state.freezed.dart';

@freezed
abstract class PlaylistsState with _$PlaylistsState {
  const factory PlaylistsState({
    @Default([]) List<Playlist> playlists,
  }) = _PlaylistsState;
}

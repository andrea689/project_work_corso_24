import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/api/dio_client.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/pages/library/cubits/playlists_state.dart';

class PlaylistsCubit extends Cubit<PlaylistsState> {
  final DioClient client;

  PlaylistsCubit({
    required this.client,
  }) : super(PlaylistsState());

  Future<void> fetchPlaylists() async {
    emit(state.copyWith(
      isLoading: true,
      isError: false,
    ));
    try {
      final response = await client.api.getPlaylists();

      emit(state.copyWith(
        playlists: response.results,
        isLoading: false,
      ));
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }

  Future<void> deletePlaylist(Playlist playlist) async {
    final playlistId = playlist.id;

    if (playlistId == null) {
      throw Exception('Playlist id is null');
    }

    try {
      await client.api.deletePlaylist(playlistId);

      final playlists =
          state.playlists.where((e) => e.id != playlistId).toList();

      emit(state.copyWith(
        playlists: playlists,
      ));
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isError: true,
      ));
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/api/dio_client.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/cubits/playlist_add_edit_state.dart';

class PlaylistAddEditCubit extends Cubit<PlaylistAddEditState> {
  final DioClient client;

  PlaylistAddEditCubit({
    required this.client,
  }) : super(PlaylistAddEditState());

  Future<void> addPlaylist(Playlist playlist) async {
    emit(state.copyWith(
      isLoading: true,
      isError: false,
    ));
    try {
      await client.api.addPlaylist(playlist);

      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      ));
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }

  Future<void> updatePlaylist(Playlist playlist) async {
    final playlistId = playlist.id;

    if (playlistId == null) {
      throw Exception('Playlist id is null');
    }

    emit(state.copyWith(
      isLoading: true,
      isError: false,
    ));
    try {
      await client.api.updatePlaylist(playlistId, playlist);

      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      ));
    } catch (e) {
      print(e);
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }
}

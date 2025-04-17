import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/api/dio_client.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/cubits/playlist_add_edit_cubit.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/cubits/playlist_add_edit_state.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/widgets/playlist_form.dart';

class PlaylistAddEditPage extends StatelessWidget {
  final Playlist? playlist;

  const PlaylistAddEditPage({
    super.key,
    this.playlist,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaylistAddEditCubit(
        client: context.read<DioClient>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              playlist != null ? 'Modifica playlist' : 'Aggiungi playlist'),
        ),
        body: BlocListener<PlaylistAddEditCubit, PlaylistAddEditState>(
          listener: (context, state) {
            if (state.isSuccess) {
              Navigator.of(context).pop(true);
            }
          },
          child: PlaylistForm(
            playlist: playlist,
          ),
        ),
      ),
    );
  }
}

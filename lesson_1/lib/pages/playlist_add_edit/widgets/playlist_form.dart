import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/cubits/playlist_add_edit_cubit.dart';

class PlaylistForm extends StatefulWidget {
  final Playlist? playlist;

  const PlaylistForm({
    super.key,
    this.playlist,
  });

  @override
  State<PlaylistForm> createState() => _PlaylistFormState();
}

class _PlaylistFormState extends State<PlaylistForm> {
  late final nameController =
      TextEditingController(text: widget.playlist?.name);
  late final userController =
      TextEditingController(text: widget.playlist?.user);
  late final coverController =
      TextEditingController(text: widget.playlist?.imageUrl);

  @override
  void dispose() {
    nameController.dispose();
    userController.dispose();
    coverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PlaylistAddEditCubit>().state;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Errore nella richiesta'),
          ],
        ),
      );
    }

    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
            label: Text('Nome playlist'),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: userController,
          decoration: const InputDecoration(
            label: Text('Utente'),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: coverController,
          decoration: const InputDecoration(
            label: Text('Copertina'),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            final playlist = Playlist(
              id: widget.playlist?.id,
              name: nameController.text,
              user: userController.text,
              imageUrl: coverController.text,
            );
            widget.playlist != null
                ? context.read<PlaylistAddEditCubit>().updatePlaylist(playlist)
                : context.read<PlaylistAddEditCubit>().addPlaylist(playlist);
          },
          child: Text(widget.playlist != null ? 'Salva' : 'Aggiungi'),
        ),
      ],
    );
  }
}

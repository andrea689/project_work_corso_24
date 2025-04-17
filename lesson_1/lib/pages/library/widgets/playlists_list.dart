import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/pages/library/cubits/playlists_cubit.dart';
import 'package:wp_lesson_1/pages/library/widgets/playlists_list_item.dart';
import 'package:wp_lesson_1/pages/playlist_add_edit/playlist_add_edit_page.dart';

class PlaylistsList extends StatelessWidget {
  const PlaylistsList({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PlaylistsCubit>().state;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Errore nella richiesta'),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                context.read<PlaylistsCubit>().fetchPlaylists();
              },
              child: Text('Riprova'),
            )
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: state.playlists.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return PlaylistsListItem(
            title: 'Aggiungi playlist',
            icon: Icons.add,
            onTap: () async {
              final isSuccess = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PlaylistAddEditPage();
                  },
                ),
              );

              if (isSuccess == true) {
                context.read<PlaylistsCubit>().fetchPlaylists();
              }
            },
          );
        }

        final playlist = state.playlists[index - 1];
        return Dismissible(
          key: Key(playlist.id!),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            context.read<PlaylistsCubit>().deletePlaylist(playlist);
          },
          background: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete),
                SizedBox(width: 16),
              ],
            ),
          ),
          child: PlaylistsListItem(
            title: playlist.name,
            subtitle: playlist.user,
            imageUrl: playlist.imageUrl,
            onTap: () async {
              final isSuccess = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return PlaylistAddEditPage(
                      playlist: playlist,
                    );
                  },
                ),
              );

              if (isSuccess == true) {
                context.read<PlaylistsCubit>().fetchPlaylists();
              }
            },
          ),
        );
      },
    );
  }
}

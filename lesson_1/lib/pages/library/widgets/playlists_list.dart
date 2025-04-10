import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/pages/library/cubits/playlists_cubit.dart';
import 'package:wp_lesson_1/pages/library/widgets/playlists_list_item.dart';

class PlaylistsList extends StatelessWidget {
  const PlaylistsList({super.key});

  @override
  Widget build(BuildContext context) {
    final playlists = context.watch<PlaylistsCubit>().state.playlists;
    return ListView.builder(
      itemCount: playlists.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return PlaylistsListItem(
            title: 'Aggiungi playlist',
            icon: Icons.add,
          );
        }

        final playlist = playlists[index - 1];
        return PlaylistsListItem(
          title: playlist.name,
          subtitle: playlist.user,
          imageUrl: playlist.imageUrl,
        );
      },
    );
  }
}

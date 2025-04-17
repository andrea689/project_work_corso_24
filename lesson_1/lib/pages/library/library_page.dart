import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/api/dio_client.dart';
import 'package:wp_lesson_1/pages/library/cubits/playlists_cubit.dart';
import 'package:wp_lesson_1/pages/library/widgets/music_section.dart';
import 'package:wp_lesson_1/pages/library/widgets/podcast_section.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaylistsCubit(
        client: context.read<DioClient>(),
      )..fetchPlaylists(),
      child: const LibraryPageScaffold(),
    );
  }
}

class LibraryPageScaffold extends StatelessWidget {
  const LibraryPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          dividerHeight: 0,
          isScrollable: true,
          padding: EdgeInsets.zero,
          tabAlignment: TabAlignment.start,
          indicatorColor: Colors.transparent,
          labelStyle: Theme.of(context).textTheme.titleLarge,
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.grey),
          tabs: [
            Tab(
              child: Text(
                'Musica',
              ),
            ),
            Tab(
              child: Text(
                'Podcast',
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            MusicSection(),
            PodcastSection(),
          ],
        ),
      ),
    );
  }
}

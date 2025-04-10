import 'package:flutter/material.dart';
import 'package:wp_lesson_1/pages/library/widgets/playlists_list.dart';

class MusicSection extends StatelessWidget {
  const MusicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          dividerHeight: 0,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelStyle: Theme.of(context).textTheme.titleMedium,
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.grey),
          indicatorColor: Colors.green,
          tabs: [
            Tab(
              child: Text(
                'Playlists',
              ),
            ),
            Tab(
              child: Text(
                'BOOOO',
              ),
            ),
            Tab(
              child: Text(
                'Album',
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            PlaylistsList(),
            Text('2'),
            Text('3'),
          ],
        ),
      ),
    );
  }
}

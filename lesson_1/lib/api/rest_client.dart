import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/models/playlists.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://parseapi.back4app.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/classes/playlists')
  Future<Playlists> getPlaylists();

  @POST('/classes/playlists')
  Future<void> addPlaylist(@Body() Playlist playlist);

  @PUT('/classes/playlists/{playlistId}')
  Future<void> updatePlaylist(
    @Path('playlistId') String playlistId,
    @Body() Playlist playlist,
  );

  @DELETE('/classes/playlists/{playlistId}')
  Future<void> deletePlaylist(
    @Path('playlistId') String playlistId,
  );
}

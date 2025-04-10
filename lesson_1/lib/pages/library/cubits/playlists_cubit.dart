import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_lesson_1/models/playlist.dart';
import 'package:wp_lesson_1/pages/library/cubits/playlists_state.dart';

class PlaylistsCubit extends Cubit<PlaylistsState> {
  PlaylistsCubit() : super(PlaylistsState());

  Future<void> fetchPlaylists() async {
    final playlitsJson = [
      {
        "nome_playlist": "Relaxing Vibes",
        "nome_utente": "user1",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Workout Motivation",
        "nome_utente": "user2",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Chill Hits",
        "nome_utente": "user3",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Indie Rock Classics",
        "nome_utente": "user4",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Jazz Essentials",
        "nome_utente": "user5",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Party Playlist",
        "nome_utente": "user6",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Romantic Ballads",
        "nome_utente": "user7",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Morning Boost",
        "nome_utente": "user8",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Summer Vibes",
        "nome_utente": "user9",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      },
      {
        "nome_playlist": "Electronic Chill",
        "nome_utente": "user10",
        "copertura":
            "https://images-eu.ssl-images-amazon.com/images/I/71sBmJvcIKL._AC_UL600_SR600,600_.jpg"
      }
    ];

    final playlits = playlitsJson.map((e) => Playlist.fromJson(e)).toList();

    emit(state.copyWith(playlists: playlits));
  }
}

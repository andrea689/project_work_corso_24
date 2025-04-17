import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_add_edit_state.freezed.dart';

@freezed
abstract class PlaylistAddEditState with _$PlaylistAddEditState {
  const factory PlaylistAddEditState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isSuccess,
  }) = _PlaylistAddEditState;
}

import 'package:equatable/equatable.dart';

class AudioMeta extends Equatable {
  final String id;
  final String audioName;
  final String albumName;
  final List<String> artists;
  final List<String> featuringArtists;
  final int audioLength;
  final int bytes;

  AudioMeta(
      {required this.id,
      required this.audioLength,
      required this.bytes,
      this.audioName = '',
      this.albumName = '',
      this.artists = const [],
      this.featuringArtists = const []});

  @override
  List<Object?> get props => [id];
}

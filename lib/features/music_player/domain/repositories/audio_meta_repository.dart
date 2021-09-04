import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/audio_meta.dart';

abstract class AudioMetaRepository {
  Future<Either<Failure, AudioMeta>> getAudioMeta(String id);
  Future<Either<Failure, AudioMeta>> getRandomAudioMetaFromGroup(
      String groupId);
}

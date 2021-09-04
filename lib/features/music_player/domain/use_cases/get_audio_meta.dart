import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:streaming_platform/core/use_cases/use_case.dart';
import '../../../../core/error/failure.dart';
import '../entities/audio_meta.dart';
import '../repositories/audio_meta_repository.dart';

class GetAudioMeta implements UseCase<AudioMeta, Params> {
  final AudioMetaRepository repository;

  GetAudioMeta(this.repository);

  Future<Either<Failure, AudioMeta>> call(Params params) async {
    return await repository.getAudioMeta(params.id);
  }
}

class Params extends Equatable {
  final String id;

  Params({required this.id});

  @override
  List<Object?> get props => [id];
}

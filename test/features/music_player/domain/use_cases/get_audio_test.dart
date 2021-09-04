import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:streaming_platform/features/music_player/domain/entities/audio_meta.dart';
import 'package:streaming_platform/features/music_player/domain/repositories/audio_meta_repository.dart';
import 'package:streaming_platform/features/music_player/domain/use_cases/get_audio_meta.dart';

import 'get_audio_test.mocks.dart';

@GenerateMocks([AudioMetaRepository])
void main() {
  late GetAudioMeta useCase;
  late MockAudioMetaRepository mockAudioMetaRepository;

  setUp(() {
    mockAudioMetaRepository = MockAudioMetaRepository();
    useCase = GetAudioMeta(mockAudioMetaRepository);
  });

  final tAudioId = ;
  final tAudioMeta = AudioMeta(id: 'a', audioLength: 180000, bytes: 2222);

  test('should get audio meta from the repository', () async {
    when(mockAudioMetaRepository.getAudioMeta(any))
        .thenAnswer((_) async => Right(tAudioMeta));
    final result = await useCase(Params(id: tAudioId));
    expect(result, Right(tAudioMeta));
    verify(mockAudioMetaRepository.getAudioMeta(tAudioId));
  });
}

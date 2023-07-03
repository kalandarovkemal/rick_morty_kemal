import 'package:data/data.dart';

import '../domain.dart';
import 'usecase.dart';

class GetCharactersUseCase
    implements FutureUseCase<CharactersPayload, List<CharacterDetailsModel>> {
  final CharactersRepository _charactersRepository;

  const GetCharactersUseCase({
    required CharactersRepository cityRepository,
  }) : _charactersRepository = cityRepository;

  @override
  Future<List<CharacterDetailsModel>> execute(CharactersPayload input) async {
    return _charactersRepository.getAllCharacters(input);
  }
}

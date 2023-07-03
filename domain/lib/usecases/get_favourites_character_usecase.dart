import 'package:data/data.dart';

import '../domain.dart';
import 'usecase.dart';

class GetFavouriteCharactersUseCase implements FutureUseCase<void, List<CharacterDetailsModel>> {
  final CharactersRepository _charactersRepository;

  const GetFavouriteCharactersUseCase({
    required CharactersRepository cityRepository,
  }) : _charactersRepository = cityRepository;

  @override
  Future<List<CharacterDetailsModel>> execute([void input]) async {
    return _charactersRepository.getAllFavorites();
  }
}

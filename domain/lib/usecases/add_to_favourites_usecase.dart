import 'package:data/data.dart';

import '../domain.dart';
import 'usecase.dart';

class AddToFavouritesUseCase implements FutureUseCase<CharacterDetailsModel, void> {
  final CharactersRepository _charactersRepository;

  const AddToFavouritesUseCase({
    required CharactersRepository cityRepository,
  }) : _charactersRepository = cityRepository;

  @override
  Future<void> execute(CharacterDetailsModel input) async {
    return _charactersRepository.addToFavorites(input);
  }
}

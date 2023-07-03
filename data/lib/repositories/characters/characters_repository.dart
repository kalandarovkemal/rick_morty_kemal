import 'package:domain/domain.dart';

abstract class CharactersRepository {
  Future<List<CharacterDetailsModel>> getAllCharacters(CharactersPayload payload);

  Future<List<CharacterDetailsModel>> getAllFavorites();

  Future<void> addToFavorites(CharacterDetailsModel character);
}

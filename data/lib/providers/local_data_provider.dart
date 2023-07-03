import 'package:domain/models/character/characters.dart';

abstract class LocalDataProvider {
  Future<void> write(CharacterDetailsModel object);

  Future<void> writeAllCharacters(List<CharacterDetailsModel> characters);

  Future<List<CharacterDetailsModel>> readAllCharacters();

  Future<List<CharacterDetailsModel>> readAllFavorites();

  Future<void> delete(int characterId);

  Future<void> deleteAll(List<int> ids);

  Future<bool> isCharacterExist(int characterId);
}

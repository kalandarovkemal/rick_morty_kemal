import 'package:domain/models/character/characters.dart';

abstract class LocalDataProvider {
  Future<void> write(CharacterDetailsModel object);

  Future<List<CharacterDetailsModel>> readAllCharacters();

  Future<void> delete(int characterId);

  Future<void> deleteAll(List<int> ids);

  Future<bool> isCharacterExist(int characterId);
}

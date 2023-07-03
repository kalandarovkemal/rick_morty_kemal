import 'package:domain/domain.dart';
import 'package:isar/isar.dart';

import '../data.dart';

class LocalDataProviderImpl implements LocalDataProvider {
  final Isar _localStorage = LocalStorage.storage;

  @override
  Future<void> writeAllCharacters(List<CharacterDetailsModel> characters) async {
    await _localStorage.writeTxn(() async {
      await _localStorage.characterDetailsModels.putAll(characters);
    });
  }

  @override
  Future<void> write(CharacterDetailsModel character) async {
    await _localStorage.writeTxn(() async {
      await _localStorage.characterDetailsModels.put(character);
    });
  }

  @override
  Future<List<CharacterDetailsModel>> readAllCharacters() {
    return _localStorage.characterDetailsModels.where().findAll();
  }

  @override
  Future<void> delete(int characterId) async {
    await _localStorage.characterDetailsModels.delete(characterId);
  }

  @override
  Future<void> deleteAll(List<int> ids) async {
    await _localStorage.characterDetailsModels.deleteAll(ids);
  }

  @override
  Future<bool> isCharacterExist(int characterId) async {
    return _localStorage.characterDetailsModels.where().isarIdEqualTo(characterId).isEmpty();
  }

  @override
  Future<List<CharacterDetailsModel>> readAllFavorites() {
    return _localStorage.characterDetailsModels.filter().isFavouriteEqualTo(true).findAll();
  }
}

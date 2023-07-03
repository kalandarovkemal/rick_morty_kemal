import 'package:data/data.dart';
import 'package:data/entities/character/characters.dart';

import '../domain.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final ApiProvider _apiProvider;
  final LocalDataProvider _localDataProvider;
  final CharacterDetailsMapper _characterDetailsMapper;

  const CharactersRepositoryImpl({
    required ApiProvider apiProvider,
    required LocalDataProvider localDataProvider,
    required CharacterDetailsMapper characterDetailsMapper,
  })  : _apiProvider = apiProvider,
        _localDataProvider = localDataProvider,
        _characterDetailsMapper = characterDetailsMapper;

  @override
  Future<List<CharacterDetailsModel>> getAllCharacters(CharactersPayload payload) async {
    try {
      return await safeRequest(
        () async {
          final CharactersEntity remoteCharacters = await _apiProvider.getAllCharacters(payload);

          final List<CharacterDetailsModel> localCharacters =
              await _localDataProvider.readAllCharacters();

          final List<CharacterDetailsModel> combinedCharacters = <CharacterDetailsModel>[
            ...localCharacters,
            ...remoteCharacters.results.map(_characterDetailsMapper.fromEntity)
          ];

          // Store the combined data locally
          await _localDataProvider.writeAllCharacters(combinedCharacters);

          return combinedCharacters;
        },
      );
    } on AppException {
      return _localDataProvider.readAllCharacters();
    }
  }

  @override
  Future<void> addToFavorites(CharacterDetailsModel character) async {
    character.copyWith(isFavourite: true);
    await _localDataProvider.write(character);
  }

  @override
  Future<List<CharacterDetailsModel>> getAllFavorites() {
    return _localDataProvider.readAllFavorites();
  }
}

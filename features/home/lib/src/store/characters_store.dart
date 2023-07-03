import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:mobx/mobx.dart';

part 'characters_store.g.dart';

class CharactersStore = _CharactersStore with _$CharactersStore;

abstract class _CharactersStore with Store {
  final GetCharactersUseCase charactersUseCase;
  final GetFavouriteCharactersUseCase getFavouriteCharactersUseCase;
  final AddToFavouritesUseCase addToFavouritesUseCase;

  _CharactersStore(
    this.charactersUseCase,
    this.getFavouriteCharactersUseCase,
    this.addToFavouritesUseCase,
  );

  @observable
  CharactersState state = CharactersState.initial;

  @observable
  List<CharacterDetailsModel> characters = <CharacterDetailsModel>[];

  @observable
  List<CharacterDetailsModel> favoriteCharacters = [];

  @action
  Future<void> fetchCharacters(CharactersPayload payload) async {
    final CharactersPayload payloadModel = CharactersPayload(
      page: payload.page,
      name: payload.name,
      status: payload.status,
      species: payload.species,
      type: payload.type,
      gender: payload.gender,
    );

    state = CharactersState.loading;
    try {
      final List<CharacterDetailsModel> fetchedCharacters =
          await charactersUseCase.execute(payloadModel);
      if (fetchedCharacters.isEmpty) {
        state = CharactersState.error;
        return;
      }
      characters = fetchedCharacters;
      state = CharactersState.loaded;
    } on AppException catch (e, _) {
      state = CharactersState.error;
    }
  }

  @action
  Future<void> addToFavorites(CharacterDetailsModel character) async {
    await addToFavouritesUseCase.execute(character);
  }

  @action
  Future<List<CharacterDetailsModel>> fetchFavoriteCharacters() async {
    return getFavouriteCharactersUseCase.execute();
  }
}

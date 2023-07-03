part of characters_model;

class CharactersModel extends Equatable {
  final CharacterInfoModel info;
  final List<CharacterDetailsModel> results;

  const CharactersModel({
    required this.info,
    required this.results,
  });

  CharactersModel copyWith({
    CharacterInfoModel? info,
    List<CharacterDetailsModel>? results,
  }) {
    return CharactersModel(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        info,
        results,
      ];
}

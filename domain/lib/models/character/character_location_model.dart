part of characters_model;

class CharacterLocationModel extends Equatable {
  final String name;
  final String url;

  const CharacterLocationModel({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => <Object?>[
        name,
        url,
      ];
}

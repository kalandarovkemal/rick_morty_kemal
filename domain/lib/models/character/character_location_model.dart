part of characters_model;

@Embedded(inheritance: false)
class CharacterLocationModel extends Equatable {
  final String? name;
  final String? url;

  const CharacterLocationModel({
    this.name,
    this.url,
  });

  @ignore
  @override
  List<Object?> get props => <Object?>[
        name,
        url,
      ];
}

part of characters_entity;

@JsonSerializable()
class CharactersEntity {
  final CharacterInfoEntity info;
  final List<CharacterDetailsEntity> results;

  CharactersEntity({
    required this.info,
    required this.results,
  });

  factory CharactersEntity.fromJson(Map<String, dynamic> json) => _$CharactersEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CharactersEntityToJson(this);
}

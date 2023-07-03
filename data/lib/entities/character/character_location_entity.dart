part of characters_entity;

@JsonSerializable()
class CharacterLocationEntity {
  final String name;
  final String url;

  CharacterLocationEntity({
    required this.name,
    required this.url,
  });

  factory CharacterLocationEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterLocationEntityToJson(this);
}

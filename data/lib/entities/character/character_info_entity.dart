part of characters_entity;

@JsonSerializable()
class CharacterInfoEntity {
  final int count;
  final int pages;
  final String next;
  final String? prev;

  CharacterInfoEntity({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory CharacterInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterInfoEntityToJson(this);
}

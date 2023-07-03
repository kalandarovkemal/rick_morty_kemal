part of characters_entity;

Gender parseGender(String gender) {
  switch (gender) {
    case 'Male':
      return Gender.male;
    case 'Female':
      return Gender.female;
    default:
      return Gender.unknown;
  }
}

Status parseStatus(String status) {
  switch (status) {
    case 'Alive':
      return Status.alive;
    case 'Dead':
      return Status.dead;
    default:
      return Status.unknown;
  }
}

@JsonSerializable()
class CharacterDetailsEntity {
  final int id;
  final String name;
  @JsonKey(fromJson: parseStatus)
  final Status status;
  final String species;
  final String type;
  @JsonKey(fromJson: parseGender)
  final Gender gender;
  final CharacterLocationEntity origin;
  final CharacterLocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;

  CharacterDetailsEntity({
    required int this.id,
    required String this.name,
    required Status this.status,
    required String this.species,
    required String this.type,
    required Gender this.gender,
    required CharacterLocationEntity this.origin,
    required CharacterLocationEntity this.location,
    required String this.image,
    required List<String> this.episode,
    required String this.url,
    required DateTime this.created,
  });

  factory CharacterDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterDetailsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterDetailsEntityToJson(this);
}

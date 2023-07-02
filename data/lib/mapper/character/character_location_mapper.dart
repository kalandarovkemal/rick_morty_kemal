part of mappers;

class CharacterLocationMapper extends Mapper<CharacterLocationEntity, CharacterLocationModel> {
  @override
  CharacterLocationModel fromEntity(CharacterLocationEntity entity) {
    return CharacterLocationModel(
      name: entity.name,
      url: entity.url,
    );
  }

  @override
  CharacterLocationEntity toEntity(CharacterLocationModel item) {
    return CharacterLocationEntity(
      name: item.name,
      url: item.url,
    );
  }
}

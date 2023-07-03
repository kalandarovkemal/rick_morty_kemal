part of mappers;

class CharacterDetailsMapper extends Mapper<CharacterDetailsEntity, CharacterDetailsModel> {
  final CharacterLocationMapper _locationMapper;

  const CharacterDetailsMapper({
    required CharacterLocationMapper locationMapper,
  }) : _locationMapper = locationMapper;

  @override
  CharacterDetailsModel fromEntity(CharacterDetailsEntity entity) {
    return CharacterDetailsModel(
      id: entity.id,
      name: entity.name,
      status: entity.status,
      species: entity.species,
      type: entity.type,
      gender: entity.gender,
      origin: _locationMapper.fromEntity(entity.origin),
      location: _locationMapper.fromEntity(entity.location),
      image: entity.image,
      episode: entity.episode,
      url: entity.url,
      created: entity.created,
    );
  }

  @override
  CharacterDetailsEntity toEntity(CharacterDetailsModel item) {
    return CharacterDetailsEntity(
      id: item.id,
      name: item.name,
      status: item.status,
      species: item.species,
      type: item.type,
      gender: item.gender,
      origin: _locationMapper.toEntity(item.origin),
      location: _locationMapper.toEntity(item.location),
      image: item.image,
      episode: item.episode,
      url: item.url,
      created: item.created,
    );
  }
}

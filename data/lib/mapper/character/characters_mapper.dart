part of mappers;

class CharactersMapper extends Mapper<CharactersEntity, CharactersModel> {
  final CharacterInfoMapper _infoMapper;
  final CharacterDetailsMapper _detailsMapper;

  const CharactersMapper({
    required CharacterInfoMapper infoMapper,
    required CharacterDetailsMapper detailsMapper,
  })  : _infoMapper = infoMapper,
        _detailsMapper = detailsMapper;

  @override
  CharactersModel fromEntity(CharactersEntity entity) {
    return CharactersModel(
      info: _infoMapper.fromEntity(entity.info),
      results: entity.results.map(_detailsMapper.fromEntity).toList(),
    );
  }

  @override
  CharactersEntity toEntity(CharactersModel item) {
    return CharactersEntity(
      info: _infoMapper.toEntity(item.info),
      results: item.results.map(_detailsMapper.toEntity).toList(),
    );
  }
}

part of mappers;

class CharacterInfoMapper extends Mapper<CharacterInfoEntity, CharacterInfoModel> {
  @override
  CharacterInfoModel fromEntity(CharacterInfoEntity entity) {
    return CharacterInfoModel(
      count: entity.count,
      pages: entity.pages,
      next: entity.next,
      prev: entity.prev,
    );
  }

  @override
  CharacterInfoEntity toEntity(CharacterInfoModel item) {
    return CharacterInfoEntity(
      count: item.count,
      pages: item.pages,
      next: item.next,
      prev: item.prev,
    );
  }
}

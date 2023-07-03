import 'package:data/mapper/mappers.dart';

extension ListMapper<A, B> on Mapper<A, B> {
  List<B> fromList(List<A>? entities) {
    return entities?.map(fromEntity).toList() ?? <B>[];
  }

  List<A> toList(List<B> entities) {
    return entities.map(toEntity).toList();
  }
}

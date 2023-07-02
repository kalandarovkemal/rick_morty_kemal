part of characters_model;

class CharacterInfoModel extends Equatable {
  final int count;
  final int pages;
  final String next;
  final String? prev;

  const CharacterInfoModel({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  CharacterInfoModel copyWith({
    int? count,
    int? pages,
    String? next,
    String? prev,
  }) {
    return CharacterInfoModel(
      count: count ?? this.count,
      pages: pages ?? this.pages,
      next: next ?? this.next,
      prev: prev ?? this.prev,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        count,
        pages,
        next,
        prev,
      ];
}

part of characters_model;

@Collection(inheritance: false)
class CharacterDetailsModel extends Equatable {
  final int id;
  final String name;
  @enumerated
  final Status status;
  final String species;
  final String type;
  @enumerated
  final Gender gender;
  final CharacterLocationModel origin;
  final CharacterLocationModel location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;
  final bool isFavourite;

  const CharacterDetailsModel({
    @Index(type: IndexType.value) required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
    this.isFavourite = false,
  });

  CharacterDetailsModel copyWith({
    int? id,
    String? name,
    Status? status,
    String? species,
    String? type,
    Gender? gender,
    CharacterLocationModel? origin,
    CharacterLocationModel? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
    bool? isFavourite,
  }) {
    return CharacterDetailsModel(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      origin: origin ?? this.origin,
      location: location ?? this.location,
      image: image ?? this.image,
      episode: episode ?? this.episode,
      url: url ?? this.url,
      created: created ?? this.created,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @ignore
  @override
  List<Object?> get props => <Object?>[
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
        location,
        image,
        episode,
        url,
        created,
      ];

  Id get isarId => id;
}

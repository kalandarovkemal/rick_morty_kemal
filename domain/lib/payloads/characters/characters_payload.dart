import 'package:equatable/equatable.dart';

class CharactersPayload extends Equatable {
  final String page;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;

  const CharactersPayload({
    required this.page,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
    };
  }

  CharactersPayload copyWith({
    String? page,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
  }) {
    return CharactersPayload(
      page: page ?? this.page,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        page,
        name,
        status,
        species,
        type,
        gender,
      ];
}

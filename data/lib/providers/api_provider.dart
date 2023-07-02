import 'package:core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../entities/character/characters.dart';

part 'api_provider.g.dart';

@RestApi()
abstract class ApiProvider {
  factory ApiProvider(Dio dio) = _ApiProvider;

  @GET(ApiConstants.character)
  Future<CharactersEntity> getAllCharacters(
    @Query('page') int? page,
    @Query('name') String? name,
    @Query('status') String? status,
    @Query('species') String? species,
    @Query('type') String? type,
    @Query('gender') String? gender,
  );
}

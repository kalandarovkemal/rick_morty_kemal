import 'package:core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../entities/character/characters.dart';

part 'api_provider.g.dart';

@RestApi()
abstract class ApiProvider {
  factory ApiProvider(Dio dio) = _ApiProvider;

  @GET(ApiConstants.character)
  @NoBody()
  Future<CharactersEntity> getAllCharacters();
}

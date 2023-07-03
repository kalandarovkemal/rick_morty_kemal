library data;

import 'dart:io';

import 'package:domain/models/character/characters.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

export 'di/data_di.dart';
export 'mapper/mappers.dart';
export 'providers/api_provider.dart';
export 'providers/local_data_provider.dart';
export 'providers/safe_request.dart';
export 'repositories/repositories.dart';

part 'storage/local_storage.dart';

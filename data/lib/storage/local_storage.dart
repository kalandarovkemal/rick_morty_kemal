part of data;

class LocalStorage {
  static late final Isar storage;

  static Future<void> initializeDatabase() async {
    final Directory dir = await getApplicationDocumentsDirectory();

    storage = await Isar.open(
      <CollectionSchema<dynamic>>[
        CharacterDetailsModelSchema,
      ],
      directory: dir.path,
    );
  }
}

import 'package:hive/hive.dart';

class EshopDatabase {
  static late final BoxCollection database;

  static createDatabase() async {
    database = await BoxCollection.open(
      'EshopDatabase', // Name of your database
      {'categories', 'products'}, // Names of your boxes
      path: './',
    );
  }
}

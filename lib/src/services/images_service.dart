import 'dart:io';

import 'package:dart_grpc_api/src/generated/eshop.pb.dart';

import '../database/database.dart';

class ImageService {
  Future<ImageLink> uploadImage(Stream<AppImage> request) async {
    final List<int> image = [];
    String? name;
    await for (var element in request) {
      if (element.name.isNotEmpty) {
        name = element.name;
      }
      image.addAll(element.image);
    }
    if (name == null) {
      throw Exception('image corrupted');
    }
    File imageFile = File('lib\\src\\database\\images\\' + name);
    await imageFile.writeAsBytes(image);

    return ImageLink(link: name);
  }

  Stream<AppImage> loadImage(String link) async* {
    File imageFile = File('lib\\src\\database\\images\\' + (link));

    final imageBytes = await imageFile.readAsBytes();

    int index = 0;
    while (index < imageBytes.length) {
      int lastIndex = index + 128;
      if (lastIndex > imageBytes.length) lastIndex = imageBytes.length;
      final data = AppImage(
        image: imageBytes.sublist(index, lastIndex),
      );
      yield data;
      index = lastIndex;
    }
  }
}

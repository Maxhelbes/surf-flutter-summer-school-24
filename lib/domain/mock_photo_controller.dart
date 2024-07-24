import 'package:flutter/foundation.dart';
import 'package:surf_flutter_summer_school_24/data/mock_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/entity/photo_entity.dart';

class MockPhotoController {
  final MockPhotoRepository _mockPhotoRepository;

  MockPhotoController({
    required MockPhotoRepository mockPhotoRepository,
  }) : _mockPhotoRepository = mockPhotoRepository;

  late final ValueNotifier<List<PhotoEntity>> _photoData =
      ValueNotifier<List<PhotoEntity>>([]);

  ValueListenable<List<PhotoEntity>> get photoData => _photoData;

  Future<void> getPhotos() async {
    final photosData = await _mockPhotoRepository.getPhotos();
    _photoData.value = photosData;
  }
}

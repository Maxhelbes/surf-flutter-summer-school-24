import 'package:surf_flutter_summer_school_24/entity/photo_entity.dart';

abstract interface class IPhotoRepository {
  Future<List<PhotoEntity>> getPhotos();
}

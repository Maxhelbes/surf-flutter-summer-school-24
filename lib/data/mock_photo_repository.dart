import 'package:surf_flutter_summer_school_24/entity/photo_entity.dart';
import 'package:surf_flutter_summer_school_24/interfaces/photo_repository.dart';

class MockPhotoRepository implements IPhotoRepository {
  @override
  Future<List<PhotoEntity>> getPhotos() async {
    return [
      PhotoEntity(
        id: '1',
        url: 'assets/mock_photos/1.jpg',
      ),
      PhotoEntity(
        id: '2',
        url: 'assets/mock_photos/2.jpg',
      ),
      PhotoEntity(
        id: '3',
        url: 'assets/mock_photos/3.jpg',
      ),
      PhotoEntity(
        id: '4',
        url: 'assets/mock_photos/4.jpg',
      ),
    ];
  }
}

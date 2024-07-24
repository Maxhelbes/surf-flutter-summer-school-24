import 'package:flutter/material.dart';
import '../data/mock_photo_repository.dart';
import '../domain/mock_photo_controller.dart';
import '../entity/photo_entity.dart';
import '../photo_screen.dart';

class GridViewPostogramm extends StatefulWidget {
  const GridViewPostogramm({
    super.key,
  });

  @override
  State<GridViewPostogramm> createState() => _GridViewPostogrammState();
}

class _GridViewPostogrammState extends State<GridViewPostogramm> {
  final mockPhotoController =
      MockPhotoController(mockPhotoRepository: MockPhotoRepository());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mockPhotoController.getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ValueListenableBuilder<List<PhotoEntity>>(
          valueListenable: mockPhotoController.photoData,
          builder: (context, photos, _) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5,
              ),
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhotoScreen(initIndex: index)),
                  ),
                  child: Image.asset(photos[index].url, fit: BoxFit.cover),
                );
              },
            );
          }),
    );
  }
}

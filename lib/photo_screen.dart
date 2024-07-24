import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/data/mock_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/domain/mock_photo_controller.dart';
import 'widgets/image_tile.dart';
import 'entity/photo_entity.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key, required this.initIndex});

  final int initIndex;

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  final _countImages = 4;
  int _numberCurrentImage = 0;

  final mockPhotoController =
      MockPhotoController(mockPhotoRepository: MockPhotoRepository());

  @override
  void initState() {
    super.initState();
    mockPhotoController.getPhotos();
    _numberCurrentImage = widget.initIndex + 1;
  }

  void _changeCurrentNumber(int number) {
    setState(() {
      _numberCurrentImage = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('22.07.2023'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [Text('$_numberCurrentImage/$_countImages')],
      ),
      body: Center(
        child: ValueListenableBuilder<List<PhotoEntity>>(
            valueListenable: mockPhotoController.photoData,
            builder: (context, photos, _) {
              if (photos.isEmpty) {
                return SizedBox.shrink();
              }
              return PageView.builder(
                itemCount: 4,
                controller: PageController(
                    viewportFraction: 0.9,
                    initialPage: _numberCurrentImage - 1),
                onPageChanged: (value) => _changeCurrentNumber(value),
                itemBuilder: (BuildContext context, int itemIndex) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ImageTile(
                        assetWay: photos[itemIndex].url,
                        //assetWay: 'assets/mock_photos/1.jpg',
                      ));
                },
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotoPage(),
    );
  }
}

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  int _numberCurrentImage = 0;
  int _countImages = 0;

  void _changeCurrentNumber(int number, int count) {
    setState(() {
      _numberCurrentImage = number + 1;
      _countImages = count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('22.07.2023'),
        leading: const Icon(Icons.arrow_back),
        actions: [Text('$_numberCurrentImage/$_countImages')],
      ),
      body: Center(
        child: PageView.builder(
          itemCount: urlList.length,
          controller: PageController(viewportFraction: 0.9),
          onPageChanged: (value) => _changeCurrentNumber(value, urlList.length),
          itemBuilder: (BuildContext context, int itemIndex) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ImageTile(url: urlList[itemIndex]),
            );
          },
        ),
      ),
    );
  }
}

const urlList = [
  'https://wallpapers.com/images/hd/best-ipad-detailed-forest-whrhg2prdhu1224u.jpg',
  'https://wallpapers.com/images/hd/pine-tree-forest-minimalist-android-r8hj5r0xfc5osrpo.jpg',
  'https://wallpapers.com/images/hd/watch-tower-in-forest-indie-phone-qc8emhngrxxiligv.jpg',
  'https://i1.wp.com/wallpapercave.com/wp/wp5527045.jpg',
  'https://wallpapers.com/images/hd/iphone-7-plus-h05npj7q7ryyp27a.jpg',
];

class ImageTile extends StatelessWidget {
  final String url;

  const ImageTile({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.network(url, fit: BoxFit.cover)),
    );
  }
}

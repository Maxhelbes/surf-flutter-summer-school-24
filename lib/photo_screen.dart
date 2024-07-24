import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  final int initIndex;
  const PhotoScreen({super.key, required this.initIndex});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  int _numberCurrentImage = 0;
  final _countImages = urlList.length;


  @override
  void initState() {
    super.initState();
    _numberCurrentImage = widget.initIndex + 1;
  }

  void _changeCurrentNumber(int number) {
    setState(() {
      _numberCurrentImage = number + 1;
    });
  }

// (ModalRoute.of(context)?.settings.arguments ?? '') as int;
  
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
        child: PageView.builder(
          itemCount: urlList.length,
          controller: PageController(viewportFraction: 0.9, initialPage: _numberCurrentImage - 1),
          onPageChanged: (value) => _changeCurrentNumber(value),
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

const urlList = [
  'https://wallpapers.com/images/hd/best-ipad-detailed-forest-whrhg2prdhu1224u.jpg',
  'https://wallpapers.com/images/hd/pine-tree-forest-minimalist-android-r8hj5r0xfc5osrpo.jpg',
  'https://wallpapers.com/images/hd/watch-tower-in-forest-indie-phone-qc8emhngrxxiligv.jpg',
  'https://i1.wp.com/wallpapercave.com/wp/wp5527045.jpg',
  'https://wallpapers.com/images/hd/iphone-7-plus-h05npj7q7ryyp27a.jpg',
];



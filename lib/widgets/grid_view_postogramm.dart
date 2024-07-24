import 'package:flutter/material.dart';
import '../photo_screen.dart';

class GridViewPostogramm extends StatelessWidget {
  const GridViewPostogramm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 5,
        ),
        itemCount: urlList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PhotoScreen(initIndex: index)),
            ),
            child: Image.network(urlList[index], fit: BoxFit.cover),
          );
        },
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

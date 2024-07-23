import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/photo_screen.dart';

const urlList = [
  'https://wallpapers.com/images/hd/best-ipad-detailed-forest-whrhg2prdhu1224u.jpg',
  'https://wallpapers.com/images/hd/pine-tree-forest-minimalist-android-r8hj5r0xfc5osrpo.jpg',
  'https://wallpapers.com/images/hd/watch-tower-in-forest-indie-phone-qc8emhngrxxiligv.jpg',
  'https://i1.wp.com/wallpapercave.com/wp/wp5527045.jpg',
  'https://wallpapers.com/images/hd/iphone-7-plus-h05npj7q7ryyp27a.jpg',
];

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: null,
          title: SizedBox(
              height: 32,
              width: 140,
              child: Image.asset('assets/icons/logo.png')),
          actions: [
            IconButton(
                icon: const Icon(Icons.keyboard_control),
                onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const SizedBox(
                          height: 125,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(children: [
                                  SizedBox(
                                    height: 25,
                                    width: 75,
                                    child: Center(child: Icon(Icons.air)),
                                  ),
                                  Expanded(child: Text('Theme')),
                                  SizedBox(
                                      height: 25,
                                      width: 75,
                                      child: Text('light')),
                                ]),
                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 25,
                                        width: 75,
                                        child: Icon(Icons.ac_unit)),
                                    Expanded(child: Text('Upload photo')),
                                  ],
                                )
                              ],
                            ),
                          ));
                    }))
          ]),
      body: Container(
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
      ),
    );
  }
}

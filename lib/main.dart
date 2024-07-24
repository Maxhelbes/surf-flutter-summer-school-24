import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/grid_screen.dart';
import 'package:surf_flutter_summer_school_24/photo_screen.dart';
//import 'package:surf_flutter_summer_school_24/photo_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotoScreen(initIndex: 2),
      //GridScreen(),
    );
  }
}

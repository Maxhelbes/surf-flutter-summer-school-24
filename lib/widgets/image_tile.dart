import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    super.key,
    required this.assetWay,
  });

  final String assetWay;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
            assetWay,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => FlutterLogo(),
          )),
    );
  }
}

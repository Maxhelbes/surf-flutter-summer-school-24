import 'package:flutter/material.dart';

class ModalBottomSheetPostogramm extends StatelessWidget {
  const ModalBottomSheetPostogramm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: 25, width: 75, child: Text('light')),
              ]),
              SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(height: 25, width: 75, child: Icon(Icons.ac_unit)),
                  Expanded(child: Text('Upload photo')),
                ],
              )
            ],
          ),
        ));
  }
}

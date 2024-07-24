import 'package:flutter/material.dart';
import 'widgets/grid_view_postogramm.dart';
import 'widgets/modal_bottom_sheet_postogramm.dart';

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
                      return const ModalBottomSheetPostogramm();
                    }))
          ]),
      body: const GridViewPostogramm(),
    );
  }
}

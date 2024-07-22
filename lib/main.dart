import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text('22.07.2023'),
        leading: const Icon(Icons.arrow_back),
        actions: const [Text('02/03')],
      ),
        body:  Center(
          child: PageView.builder(
            itemCount: urlList.length,
            controller: PageController(viewportFraction: 0.9),
            itemBuilder: (BuildContext context, int itemIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ImageTile(url: urlList[itemIndex]),
              );
            },
          ),
        ),
      ),
    );
  }
}

const urlList = [
  'https://cdn.britannica.com/70/234870-050-D4D024BB/Orange-colored-cat-yawns-displaying-teeth.jpg',
  'https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1',
  'https://cdn.theatlantic.com/thumbor/d8lh_KAZuOgBYslMOP4T0iu9Fks=/0x62:2000x1187/1600x900/media/img/mt/2018/03/AP_325360162607/original.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUZqBJbCPFbsbmWd0nGOWmKV-aAgRwYylKWw&s',
]; 


class ImageTile extends StatelessWidget {
  final String url;

  const ImageTile( {
    super.key, 
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.network(url, fit:BoxFit.cover)
          ),
      );
  }
}
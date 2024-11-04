import 'package:flutter/material.dart';

void main() {
  runApp(const ImageDemoApp());
}

class ImageDemoApp extends StatelessWidget {
  const ImageDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Types Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageDemoScreen(),
    );
  }
}

class ImageDemoScreen extends StatelessWidget {
  const ImageDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Image Types Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Image widget for assets
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cat.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Text('Image.asset - Local Asset Image'),

            // 2. Image widget for network images
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2021/05/09/06/07/dog-6240043_1280.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Text('Image.network - Network Image'),

            // 3. Using AssetImage with Image widget
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/dog.jpg'),
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Text('AssetImage with Image widget'),

            // 4. Using DecorationImage in a Container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.red, width: 8)),
              ),
            ),
            const Text('DecorationImage in a Container'),
            const SizedBox(height: 48)
          ],
        ),
      ),
    );
  }
}

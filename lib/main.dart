import 'package:flutter/material.dart';
import 'presentation/views/home_screen.dart';
import 'utilities/screen_size_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSizeHandler.initialize(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    return const MaterialApp(
      title: 'Slash.',
      home: HomeScreen(),
    );
  }
}

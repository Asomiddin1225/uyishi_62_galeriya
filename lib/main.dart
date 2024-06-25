import 'package:flutter/material.dart';
import 'package:uyishi_62/animatsiya.dart';
import 'package:uyishi_62/galera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Image Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ImageGallery(),
      home: HomeScreen(),
    );
  }
}

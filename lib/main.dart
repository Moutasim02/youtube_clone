import 'package:flutter/material.dart';
import 'package:youtube_clone/theme/bottom_bar.dart';
import 'package:youtube_clone/theme/top_bar.dart';
import 'dynamic_layout/body_vids.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const TopBar(),
        ),
        body: const BodyVids(),
        bottomNavigationBar: const BottomBar(),
        ),
      );
  }
}

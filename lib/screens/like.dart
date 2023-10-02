import 'package:flutter/material.dart';
import 'package:flutter_google_nav_bar/screens/partials/page_widget.dart';
import 'package:flutter_google_nav_bar/screens/utils/assets.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Likes'),
      ),
      body: const Center(
        child: PageWidget(
          svg: Assets.like,
          title: 'Like',
        ),
      ),
    );
  }
}

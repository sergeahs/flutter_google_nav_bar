import 'package:flutter/material.dart';
import 'package:flutter_google_nav_bar/screens/partials/page_widget.dart';
import 'package:flutter_google_nav_bar/screens/utils/assets.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Search'),
      ),
      body: const Center(
        child: PageWidget(
          svg: Assets.search,
          title: 'Search',
        ),
      ),
    );
  }
}
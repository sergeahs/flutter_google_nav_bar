import 'package:flutter/material.dart';
import 'package:flutter_google_nav_bar/screens/partials/page_widget.dart';
import 'package:flutter_google_nav_bar/screens/utils/assets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Profiles'),
      ),
       body: const Center(
        child: PageWidget(
          svg: Assets.profile,
          title: 'Profile',
        ),
      ),
    );
  }
}
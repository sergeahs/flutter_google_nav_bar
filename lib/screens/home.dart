import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_nav_bar/screens/partials/page_widget.dart';
import 'package:flutter_google_nav_bar/screens/utils/assets.dart';
import 'package:flutter_google_nav_bar/screens/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Welcome Home'),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    // showModalBottomSheet(
                    //     context: context,
                    //     showDragHandle: true,
                    //     builder: (context) {
                    //       return BottomSheet(
                    //           onClosing: () {},
                    //           builder: (context) {
                    //             return const Column(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               crossAxisAlignment:
                    //                   CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'Notifications',
                    //                   style: Constants.textStyle,
                    //                 )
                    //               ],
                    //             );
                    //           });
                    //     });
                  },
                  icon: const Icon(
                    CupertinoIcons.bell,
                    color: Colors.white,
                  )),
              const Positioned(
                right: 14,
                top: 10,
                child: Badge(
                  smallSize: 10,
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
      body: const Center(
        child: PageWidget(
          svg: Assets.home,
          title: 'Welcome Home',
        ),
      ),
    );
  }
}

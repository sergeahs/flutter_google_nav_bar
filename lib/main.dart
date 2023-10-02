import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_nav_bar/screens/partials/bottom_nav_bar.dart';
import 'package:flutter_google_nav_bar/screens/utils/constants.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Constants.appColor,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Constants.appColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter google nav bar',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Constants.appColor,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBarWidget(),
    );
  }
}

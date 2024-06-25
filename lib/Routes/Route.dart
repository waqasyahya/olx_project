// app_routes.dart
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../layouts/splashscreen.dart';
import '../screens/Home.dart';
// import '../screen/about.dart';
// import '../screen/home.dart';
// import '../screen/setting.dart';
// import '../screen/splashscreen.dart';
// import '../screen/profile.dart';

class AppRoutes {
  static const HOME = '/home';
  static const setting = '/setting';
  static const profilepage = '/profilepage';
  static const splash = '/SplashScreen';

  static const VideoScreen = '/VideoScreen';

  static List<GetPage> routes = <GetPage>[
    GetPage(name: HOME, page: () => homepage()),
    // GetPage(name: setting, page: () => settindpage()),
    GetPage(name: splash, page: () => SplashScreen()),
    // GetPage(name: profilepage, page: () => AudioPlayerScreen()),
    // GetPage(name: VideoScreen, page: () => VideoPlayerScreen()),
  ];
}

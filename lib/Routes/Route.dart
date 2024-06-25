// app_routes.dart
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../layouts/splashscreen.dart';
import '../screens/Account.dart';
import '../screens/Ads.dart';
import '../screens/Home.dart';
import '../screens/chats.dart';

class AppRoutes {
  static const HOME = '/home';
  static const account = '/account';
  static const ads = '/ads';
  static const splash = '/SplashScreen';
  static const chat = '/chat';

  static List<GetPage> routes = <GetPage>[
    GetPage(name: HOME, page: () => homepage()),
    GetPage(name: account, page: () => accountpage()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: ads, page: () => adspage()),
    GetPage(name: chat, page: () => chatpage()),
  ];
}

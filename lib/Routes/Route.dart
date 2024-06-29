// app_routes.dart
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../PopupScreen/JobPopup.dart';
import '../layouts/splashscreen.dart';
import '../screens/Account.dart';
import '../screens/Ads.dart';
import '../screens/Cars.dart';
import '../screens/Home.dart';
import '../screens/Jobs.dart';
import '../screens/Moters.dart';
import '../screens/Setting.dart';
import '../screens/chats.dart';
import '../screens/property.dart';


class AppRoutes {
  static const HOME = '/home';
  static const account = '/account';
  static const ads = '/ads';
  static const splash = '/SplashScreen';
  static const chat = '/chat';
  static const property = '/property';
  static const moters = '/moters';
  static const Car = '/Carspage';
  static const job = '/jobpage';
  static const theme = '/theme';
  static const Jobpopup = '/Jobpopup';


  static List<GetPage> routes = <GetPage>[
    GetPage(name: HOME, page: () => homepage()),
    GetPage(name: account, page: () => accountpage()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: ads, page: () => adspage()),
    GetPage(name: chat, page: () => chatpage()),
    GetPage(name: property, page: () => propertypage()),
    GetPage(name: job, page: () => jobpage()),
    GetPage(name: moters, page: () => Moterpage()),
    GetPage(name: Car, page: () => AnimatedExpandCollapseScreen()),
    GetPage(name: theme, page: () => ThemeSelectionPage()),
    GetPage(name: Jobpopup, page: () => JobPagePopup()),


  ];
}

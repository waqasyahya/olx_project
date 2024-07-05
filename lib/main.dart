import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_web/firebase_core_web.dart'; // Add this line

import 'layouts/bottombar.dart';
import 'layouts/splashscreen.dart';
import 'screens/login.dart';
import 'screens/Setting.dart';
import 'Routes/Route.dart';
import 'controller/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCiFR8DGn7vDrvAsz3SI5q245qyomGDT6I',
      appId: 'olx-pakistan-507ee',
      messagingSenderId: '164363037303',
      projectId: 'olx-pakistan-507ee',
    ),
  );

  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ThemeController before using it
    Get.put(ThemeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olx Pakistan',
      initialRoute: AppRoutes.splash,
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => BottomNavigationPageController());
      }),
      getPages: [
        GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
        GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),
        GetPage(name: AppRoutes.HOME, page: () => BottomNavigationPage()),
        GetPage(name: '/theme', page: () => ThemeSelectionPage()),
      ],
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Get.find<ThemeController>().themeMode,
    );
  }
}
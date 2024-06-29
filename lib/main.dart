import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:olx_project/screens/Setting.dart';
import 'controller/theme_controller.dart';
import 'routes/route.dart';
import 'layouts/bottombar.dart';
import 'layouts/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      title: 'islameapp',
      initialRoute: _initialRoute(),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => BottomNavigationPageController());
      }),
      getPages: [
        GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
        GetPage(name: AppRoutes.HOME, page: () => BottomNavigationPage()),
        GetPage(name: '/theme', page: () => ThemeSelectionPage()),
      ],
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      themeMode: Get.find<ThemeController>().themeMode,
    );
  }

  String _initialRoute() {
    final storage = GetStorage();
    bool? hasLaunchedBefore = storage.read('hasLaunchedBefore');

    if (hasLaunchedBefore == null || !hasLaunchedBefore) {
      storage.write('hasLaunchedBefore', true);
      return AppRoutes.splash;
    } else {
      return AppRoutes.HOME;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Routes/Route.dart';
import 'layouts/Bottombar.dart';
import 'layouts/splashscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(); // Initialize GetStorage
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      ],
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



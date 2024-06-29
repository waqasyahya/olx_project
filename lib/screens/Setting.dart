import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/theme_controller.dart';


class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<ThemeController>().setTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Text('Light Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ThemeController>().setTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Text('Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ThemeController>().setTheme(ThemeMode.system);
                Navigator.pop(context);
              },
              child: Text('System Theme'),
            ),
          ],
        ),
      ),
    );
  }
}

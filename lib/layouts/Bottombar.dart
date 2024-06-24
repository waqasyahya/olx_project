import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Routes/Route.dart';


import 'ThreeColorCircle.dart'; // Add this line


class BottomNavigationPageController extends GetxController {
  static BottomNavigationPageController get to => Get.find();

  final currentIndex = 0.obs;

  void changePage(int _index) {
    currentIndex.value = _index;
    if (_index == 0) {
      Get.toNamed(AppRoutes.HOME);
    } else if (_index == 1) {
      Get.toNamed(AppRoutes.setting);
    } else if (_index == 2) {
      Get.toNamed(AppRoutes.profilepage);
    } else if (_index == 3) {
      Get.toNamed(AppRoutes.profilepage);
    }
    else if (_index == 4) {
      Get.toNamed(AppRoutes.profilepage);
    }
  }
}

class BottomNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        appBar: AppBar(
          title: Text(
            _getTitle(BottomNavigationPageController.to.currentIndex.value),
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: IndexedStack(
          index: BottomNavigationPageController.to.currentIndex.value,
          children: [
            // Add your pages here
            // HomeView(),
            // SettingPage(),
            // AudioPlayerScreen(),
            // SearchPage(),
            // ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Add this line
          currentIndex: BottomNavigationPageController.to.currentIndex.value,
          onTap: BottomNavigationPageController.to.changePage,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.home, color: Colors.black), // Set icon color to black
                  Visibility(
                    visible: BottomNavigationPageController.to.currentIndex.value == 0,
                    child: Container(
                      height: 3,
                      width: 100,
                      color: Colors.purple,
                      margin: EdgeInsets.only(top: 0, bottom: 50),
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.settings, color: Colors.black), // Set icon color to black
                  Visibility(
                    visible: BottomNavigationPageController.to.currentIndex.value == 1,
                    child: Container(
                      height: 3,
                      width: 100,
                      color: Colors.purple,
                      margin: EdgeInsets.only(top: 0, bottom: 50),
                    ),
                  ),
                ],
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -27), // adjust the y-offset to your liking
                        child: CustomPaint(
                          size: Size(38, 38),
                          painter: ThreeColorCirclePainter(),
                        ),
                      ),
                      Text('Sell', style: TextStyle(fontSize: 15)), // adjust the font size to your liking
                    ],
                  ),
                  Visibility(
                    visible: BottomNavigationPageController.to.currentIndex.value == 2,
                    child: Container(
                      height: 3,
                      width: 100,
                      // color: Colors.purple,
                      margin: EdgeInsets.only(top: 0, bottom: 50),
                    ),
                  ),
                ],
              ),
              label: '', // remove the label here
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.search, color: Colors.black), // Set icon color to black
                  Visibility(
                    visible: BottomNavigationPageController.to.currentIndex.value == 3,
                    child: Container(
                      height: 3,
                      width: 100,
                      color: Colors.purple,
                      margin: EdgeInsets.only(top: 0, bottom: 50),
                    ),
                  ),
                ],
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.person, color: Colors.black), // Set icon color to black
                  Visibility(
                    visible: BottomNavigationPageController.to.currentIndex.value == 4,
                    child: Container(
                      height: 3,
                      width: 100,
                      color: Colors.purple,
                      margin: EdgeInsets.only(top: 0, bottom: 50), // adjust the top margin to move the line up
                    ),
                  ),
                ],
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Settings';
      case 2:
        return 'Sell';
      case 3:
        return 'Search';
      case 4:
        return 'Profile';
      default:
        return '';
    }
  }
}
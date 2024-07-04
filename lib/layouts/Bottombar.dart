import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home.dart';
import '../screens/chats.dart';
import '../screens/ads.dart';
import '../screens/account.dart';
import '../Routes/Route.dart';
import 'ThreeColorCircle.dart';


import '../Routes/Route.dart';

class BottomNavigationPageController extends GetxController {
  static BottomNavigationPageController get to => Get.find();

  final currentIndex = 0.obs;

  void changePage(int _index) {
    if (_index == 2) {
      // Implement showSellPage logic here
    } else {
      currentIndex.value = _index;
      if (_index == 0) {
        Get.toNamed(AppRoutes.HOME);
      } else if (_index == 1) {
        Get.toNamed(AppRoutes.chat);
      } else if (_index == 3) {
        Get.toNamed(AppRoutes.ads);
      } else if (_index == 4) {
        Get.toNamed(AppRoutes.account);
      }
    }
  }

// void showSellPage() {
//   Get.toNamed(AppRoutes.sell);
// }
}

class BottomNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: IndexedStack(
          index: BottomNavigationPageController.to.currentIndex.value,
          children: [
            homepage(),
            chatpage(),
            Container(),
            adspage(),
            accountpage(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 62,
          child: Stack(
            children: [
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: BottomNavigationPageController.to.currentIndex.value,
                onTap: BottomNavigationPageController.to.changePage,
                selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
                unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: 20),
                    label: 'HOME',
                  ),
                  BottomNavigationBarItem(
                    icon: ClipOval(
                      child: Icon(Icons.chat_bubble_outline_rounded, size: 20),
                    ),
                    label: 'CHATS',
                  ),
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                          offset: Offset(1, -20),
                          child: CustomPaint(
                            size: Size(28, 27),
                            painter: ThreeColorCirclePainter(),
                          ),
                        ),
                      ],
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Stack(
                      children: [
                        Icon(Icons.rectangle_outlined, size: 15),
                        Positioned(
                          bottom: 5,
                          child: Icon(Icons.rectangle_outlined, size: 15),
                        ),
                      ],
                    ),
                    label: 'My Ads',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 20),
                    label: 'Account',
                  ),
                ],
              ),
              if (BottomNavigationPageController.to.currentIndex.value != 2)
                Positioned(
                  top: 0,
                  left: _getLeftPosition(context, BottomNavigationPageController.to.currentIndex.value),
                  child: Container(
                    height: 3,
                    width: 60,
                    color: Colors.purple,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  double _getLeftPosition(BuildContext context, int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 5;
    return itemWidth * index + (itemWidth - 62) / 2;
  }
}

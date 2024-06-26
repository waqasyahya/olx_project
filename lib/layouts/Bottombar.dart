import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Routes/Route.dart';
import '../screens/Account.dart';
import '../screens/Ads.dart';
import '../screens/Home.dart';
import '../screens/SellPage.dart';
import '../screens/Chats.dart';
import 'ThreeColorCircle.dart'; // Add this line

class BottomNavigationPageController extends GetxController {
  static BottomNavigationPageController get to => Get.find();

  final currentIndex = 0.obs;

  void changePage(int _index) {
    if (_index == 2) {
      showSellPage();
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
  //   Get.to(SellPage());
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
            homepage(), // Ensure these pages exist and are correctly referenced
            chatpage(),
            Container(), // Placeholder for SellPage (or handle navigation differently)
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
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.black, size: 20),
                    label: 'HOME',
                  ),
                  BottomNavigationBarItem(
                    icon: ClipOval(
                      child: Icon(Icons.chat_bubble_outline_rounded, color: Colors.black, size: 20),
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
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 1),
                        //   child: Text('Sell', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                        // ),
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
                    icon: Icon(Icons.person, color: Colors.black, size: 20),
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

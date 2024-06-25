import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Routes/Route.dart';
import '../screens/SellPage.dart';
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
        Get.toNamed(AppRoutes.setting);
      } else if (_index == 3) {
        Get.toNamed(AppRoutes.profilepage);
      } else if (_index == 4) {
        Get.toNamed(AppRoutes.profilepage);
      }
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
        bottomNavigationBar: Container(
          height: 75,
          // Fix the height of the bottom navigation bar
          decoration: BoxDecoration(
            color: Colors.grey, // Add a background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), // Add a radius to the top left corner
              topRight: Radius.circular(50), // Add a radius to the top right corner
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), // Add a radius to the top left corner
              topRight: Radius.circular(50), // Add a radius to the top right corner
            ),
            child: Stack(
              children: [
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed, // Add this line
                  currentIndex: BottomNavigationPageController.to.currentIndex.value,
                  onTap: BottomNavigationPageController.to.changePage,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.black,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Colors.black, size: 20), // Reduce the icon size
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
                            offset: Offset(1, -5), // Adjust the y-offset to fit the height
                            child: CustomPaint(
                              size: Size(26, 26), // Increase the size of the custom paint
                              painter: ThreeColorCirclePainter(),
                            ),
                          ),
                          Text('Sell', style: TextStyle(fontSize: 10)), // Increase the font size
                        ],
                      ),
                      label: '', // Remove the label here
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search, color: Colors.black, size: 20), // Reduce the icon size
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person, color: Colors.black, size: 20), // Reduce the icon size
                      label: 'Profile',
                    ),
                  ],
                ),
                if (BottomNavigationPageController.to.currentIndex.value != 2)
                  Positioned(
                    top: 0,
                    left: _getLeftPosition(context, BottomNavigationPageController.to.currentIndex.value),
                    child: Container(
                      height: 3,
                      width: 60, // Adjust the width of the line as needed
                      color: Colors.purple,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _getLeftPosition(BuildContext context, int index) {
    // Calculate the left position based on the index
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 5; // Assuming 5 items in the BottomNavigationBar
    return itemWidth * index + (itemWidth - 62) / 2; // Center the line above the icon
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

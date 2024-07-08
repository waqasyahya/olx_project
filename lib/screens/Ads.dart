import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/screens/property.dart';
import 'Moters.dart';

class adspage extends StatelessWidget {
  const adspage({super.key});

  @override
  Widget build(BuildContext context) {
    // Place MediaQuery inside the build method
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Ads'),
      ),
      body: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Container(
            width: screenWidth * 0.5, // 80% of screen width
            height: screenHeight * 1, // 80% of screen height
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'My Ads',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white.withOpacity(0.8), // text color
                          side: BorderSide(color: Colors.blueAccent, width: 1), // border color
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.filter_list),
                            Text('Filters'),
                          ],
                        ),
                        onPressed: () {
                          // Add button 1 press action here
                        },
                      ),
                      SizedBox(width: 10), // Add some space between buttons
                      ElevatedButton(
                        child: Text('All Ads'),
                        onPressed: () {
                          // Add button 2 press action here
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          'Discounts on Bundles',
                          style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                        ),
                        Spacer(), // This will take up the remaining space
                        Text(
                          'View packages',
                          style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'You do not have ads with current filters',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



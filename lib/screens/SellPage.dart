import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/card.dart';

void showSellPage() {
  Get.bottomSheet(
    Container(
      height: Get.height, // Use the complete screen height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: kToolbarHeight,
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false, // Remove the default back button
              leading: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.black, size: 25),
                  onPressed: () {
                    Get.back(); // Close the bottom sheet
                  },
                ),
              ),
              title: Text('What are you offering?'),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0), // Line height
                child: Container(
                  color: Colors.black, // Line color
                  height: 1.0, // Line thickness
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Popular',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: Sellitems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(Sellitems[index].imageUrl),
                        ),
                        title: Text(Sellitems[index].title),
                        trailing: Icon(Icons.arrow_forward_ios),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Other',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: OtherItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(OtherItems[index].imageUrl),
                        ),
                        title: Text(OtherItems[index].title),
                        trailing: Icon(Icons.arrow_forward_ios),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    isScrollControlled: true,
    backgroundColor: Colors.white, // Make the background transparent
    barrierColor: Colors.white.withOpacity(0.3), // Set the shadow color to white with opacity
  );
}
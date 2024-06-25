import 'package:flutter/material.dart';
import 'package:get/get.dart';





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
          AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false, // Remove the back button
            actions: [
              IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  Get.back(); // Close the bottom sheet
                },
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                'Sell Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ),
    isScrollControlled: true,
    backgroundColor: Colors.transparent, // Make the background transparent
    barrierColor: Colors.white.withOpacity(0.9), // Set the shadow color to white with opacity
  );
}
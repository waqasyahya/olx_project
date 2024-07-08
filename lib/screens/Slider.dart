import 'dart:async';

import 'package:flutter/material.dart';
import '../Models/card.dart'; // Import your Item model

class AutoSlider extends StatefulWidget {
  @override
  _AutoSliderState createState() => _AutoSliderState();
}

class _AutoSliderState extends State<AutoSlider> {
  late ScrollController _scrollController;
  late Timer _timer;
  double _cardWidth = 300; // Assuming each card is 300 width
  int _currentPageIndex = 0;
// Example list of items

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _scrollNext();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollNext() {
    _currentPageIndex++;
    if (_currentPageIndex >= items.length) {
      _currentPageIndex = 0;
      _scrollController.jumpTo(0); // Jump back to the beginning
    } else {
      _scrollController.animateTo(_currentPageIndex * _cardWidth,
          duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _buildCards(),
      ),
    );
  }

  List<Widget> _buildCards() {
    return items.map((item) => _buildCard(item)).toList();
  }

  Widget _buildCard(Item item) {
    return Container(
      height: 400,
      width: _cardWidth,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            item.imageUrl,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ), // Example usage of imageUrl
          SizedBox(height: 16),
          Text(
            item.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              item.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

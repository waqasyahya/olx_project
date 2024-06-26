import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/screens/property.dart';

import 'Moters.dart';
import 'Jobs.dart';

class chatpage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<chatpage> {
  int _currentIndex = 0;
  List<String> _allData = ['1 1', '1 2', '1 3', '1 4', '1 5'];
  List<String> _buyingData = ['2 1', '2 2'];
  List<String> _sellingData = ['3 1', '3 2', '3 3', '3 4', '3 5'];
  List<String> _data = [];
  final PageController _chatPageController = PageController();

  @override
  void initState() {
    super.initState();
    _data = _allData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Chats', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w500)),
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            snap: true,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                          _data = _allData;
                          _chatPageController.jumpToPage(0);
                        });
                      },
                      child: Text('All', style: TextStyle(color: _currentIndex == 0 ? Colors.blue : Colors.black)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                          _data = _buyingData;
                          _chatPageController.jumpToPage(1);
                        });
                      },
                      child: Text('Buying', style: TextStyle(color: _currentIndex == 1 ? Colors.blue : Colors.black)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                          _data = _sellingData;
                          _chatPageController.jumpToPage(2);
                        });
                      },
                      child: Text('Selling', style: TextStyle(color: _currentIndex == 2 ? Colors.blue : Colors.black)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 0
                          ? Container(
                        height: 2,
                        color: Colors.blue,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 1
                          ? Container(
                        height: 2,
                        color: Colors.blue,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 2
                          ? Container(
                        height: 2,
                        color: Colors.blue,
                      )
                          : Container(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: PageView(
                  controller: _chatPageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                      if (index == 0) {
                        _data = _allData;
                      } else if (index == 1) {
                        _data = _buyingData;
                      } else {
                        _data = _sellingData;
                      }
                    });
                  },
                  children: [
                    ListView.builder(
                      itemCount: _allData.length,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(_allData[index]));
                      },
                    ),
                    ListView.builder(
                      itemCount: _buyingData.length,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(_buyingData[index]));
                      },
                    ),
                    ListView.builder(
                      itemCount: _sellingData.length,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(_sellingData[index]));
                      },
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
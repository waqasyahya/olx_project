import 'package:flutter/material.dart';

import '../Models/card.dart';

class chatpage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<chatpage> {
  int _currentIndex = 0;
  // List<String> _allData=[];
  // List<String> _buyingData = [ ];
  // List<String> _sellingData = [ ];
  // List<String> _data = [];
  final PageController _chatPageController = PageController();

  @override
  void initState() {
    super.initState();
    var data = allData.cast<String>();
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
                          var data = allData.cast<String>();
                          _chatPageController.jumpToPage(0);
                        });
                      },
                      child: Text('All', style: TextStyle(color: _currentIndex == 0 ? Colors.blue : Colors.black)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                          var data = buyingData.cast<String>();
                          _chatPageController.jumpToPage(1);
                        });
                      },
                      child: Text('Buying', style: TextStyle(color: _currentIndex == 1 ? Colors.blue : Colors.black)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                          var data = sellingData.cast<String>();
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

                color: Colors.yellowAccent,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 0
                          ? Container(
                        height: 2,
                        width: 100,
                        color: Colors.red,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 1
                          ? Container(
                        height: 2,
                        width: 100,
                        color: Colors.black,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 2
                          ? Container(
                        height: 2,
                        width: 100,
                        color: Colors.green,
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
                  physics: AlwaysScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                      if (index == 0) {
                        var data = allData.cast<String>();
                      } else if (index == 1) {
                        var data = buyingData.cast<String>();
                      } else {
                        var data = sellingData.cast<String>();
                      }
                    });
                  },
                  children: [
                    ListView.builder(
                      itemCount: allData.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            if (allData[index].isImage)
                              Image.asset(allData[index].imageUrl),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(allData[index].text, style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: buyingData.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            if (buyingData[index].isImage)
                              Image.asset(buyingData[index].imageUrl),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(buyingData[index].text, style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: buyingData.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            if (sellingData[index].isImage)
                              Image.asset(sellingData[index].imageUrl),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(sellingData[index].text, style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        );
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

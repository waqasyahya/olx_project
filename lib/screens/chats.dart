import 'package:flutter/material.dart';

import '../Models/card.dart';

class chatpage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<chatpage> {
  int _currentIndex = 0;

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
            title: Text('Chats', style: TextStyle(fontSize: 30,  fontWeight: FontWeight.w500)),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            elevation: Theme.of(context).appBarTheme.elevation,

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

                color: Colors.blueGrey,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 0
                          ? Container(
                        height: 5,
                        width: 45,
                        color: Colors.black,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 1
                          ? Container(
                        height: 5,
                        width: 45,
                        padding: EdgeInsets.only(left: 10),
                        color: Colors.black,
                      )
                          : Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _currentIndex == 2
                          ? Container(
                        height: 5,
                        width: 45,
                        color: Colors.black,
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: allData.length,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (allData[index].isImage)
                                      Image.asset(
                                        height: 120,
                                        allData[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Text(
                                        allData[index].text,
                                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'Find something you like and start a conversation!',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: SizedBox(
                                        width: double.infinity, // Set the width to maximum available space
                                        child: OutlinedButton(
                                          onPressed: () {
                                            // Define what happens when the button is pressed
                                            print('Button Pressed');
                                          },
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.blueGrey,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                            minimumSize: Size(double.infinity, 1), // Set the minimum size
                                          ),
                                          child: Text('Explore the latest Ads', style: TextStyle(color: Colors.white, fontSize: 24),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),



                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: buyingData.length,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (buyingData[index].isImage)
                                      Image.asset(
                                        height: 120,
                                        buyingData[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Text(
                                        buyingData[index].text,
                                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'Find something you like and start a conversation!',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: SizedBox(
                                        width: double.infinity, // Set the width to maximum available space
                                        child: OutlinedButton(
                                          onPressed: () {
                                            // Define what happens when the button is pressed
                                            print('Button Pressed');
                                          },
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.blueGrey,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                            minimumSize: Size(double.infinity, 1), // Set the minimum size
                                          ),
                                          child: Text('Explore the latest Ads', style: TextStyle(color: Colors.white, fontSize: 24),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: sellingData.length,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (sellingData[index].isImage)
                                      Image.asset(
                                        height: 120,
                                        sellingData[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Text(
                                        sellingData[index].text,
                                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'We have keep messages for any items you are selling in here',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: SizedBox(
                                        width: double.infinity, // Set the width to maximum available space
                                        child: OutlinedButton(
                                          onPressed: () {
                                            // Define what happens when the button is pressed
                                            print('Button Pressed');
                                          },
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.blueGrey,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                            minimumSize: Size(double.infinity, 1), // Set the minimum size
                                          ),
                                          child: Text('Start selling', style: TextStyle(color: Colors.white, fontSize: 24),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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

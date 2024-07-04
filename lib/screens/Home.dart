import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/screens/property.dart';
import '../Models/card.dart';
import '../PopupScreen/JobPopup.dart';
import 'Account.dart';
import 'Ads.dart';
import 'Cars.dart';
import 'Moters.dart';
import 'Jobs.dart';
import 'login.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: Theme.of(context).appBarTheme.elevation,
        // backgroundColor: Colors.white,
        shadowColor: Colors.white,
        floating: true,
        snap: true,
        pinned: false,
        leading: Image.asset('assets/images/olximage.png'), // logo on the left side
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.only(left: 15, right: 15),
                // primary: Theme.of(context).textTheme.button!.color,
              ),
              onPressed: () {
                Get.to(() => Moterpage());
                print('Button pressed');
              },
              child: Icon(Icons.car_repair_outlined), // icon inside the button
            ),
            SizedBox(width: 2), // some space between button and text
            Padding(
              padding: const EdgeInsets.only(right: 23.0),
              child: Text(
                'Moters',
                style: TextStyle(fontSize: 18),
              ),
            ), // text outside the button
          ],
        ),
        actions: [
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
                onPressed: () {
                  Get.to(() => propertypage());
                  print('Button pressed');
                },
                child: Icon(Icons.home_work), // icon inside the button
              ),
              SizedBox(width: 2), // some space between button and text
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 20),
                child: Text(
                  'Property',
                  style: TextStyle(fontSize: 18),
                ),
              ), // text outside the button
            ],
          )
        ],
      ),

        SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined, size: 25),
                              SizedBox(width: 8),
                              Text('Township Block II, Lahore...',
                                  style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Icon(Icons.notifications_none, size: 24),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: Get.width, // Fit the screen width
                          height: 50, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {
                                  // Handle search icon press
                                },
                              ),
                              Expanded(
                                child: TextField(
                                  // controller: _searchController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(),
                                  ),
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: FittedBox(
                                fit: BoxFit
                                    .scaleDown, // or BoxFit.contain, BoxFit.cover, etc.
                                child:
                                    Image.asset('assets/images/download.png'),
                              ))),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Container(
                          child: Image(
                            image: AssetImage('assets/images/download (1).png'),
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Browse categories',
                                style: TextStyle(

                                    fontSize: 23,
                                    fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen with a slide transition from the right
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => adspage(),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const begin = Offset(1.0, 0.0);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;

                                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'See All',
                                style: TextStyle( fontSize: 17),
                              ),
                            ),

                          ],
                        ),
                      ),
                      // Browser categories
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 90,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/download.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Image 1'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Moter Bikes
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mobile Phones',
                                style: TextStyle(

                                    fontSize: 23,
                                    fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen with a slide transition from the right
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => accountpage(),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const begin = Offset(1.0, 0.0);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;

                                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'See All',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 240,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                  right: 16), // Space between cards
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 5,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,

                                            size: 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        item.description,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      //   Cars
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cars',
                                style: TextStyle(

                                    fontSize: 23,
                                    fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen with a slide transition from the right
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => AnimatedExpandCollapseScreen(),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const begin = Offset(1.0, 0.0);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;

                                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'See All',
                                style: TextStyle( fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 240,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: carItems.length,
                          itemBuilder: (context, index) {
                            final item = carItems[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                  right: 16), // Space between cards
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 5,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,

                                            size: 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        item.description,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // jobs
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jobs',
                          style: TextStyle(

                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return LoginPage(); // Show the popup dialog
                              },
                            );
                          },
                          child: Text(
                            'See All',
                            style: TextStyle( fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                      Container(
                        height: 240,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: jobItems.length,
                          itemBuilder: (context, index) {
                            final item = jobItems[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                  right: 16), // Space between cards
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 5,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,

                                            size: 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        item.description,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

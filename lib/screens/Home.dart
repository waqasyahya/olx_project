import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/screens/property.dart';
import '../Models/card.dart';
import 'Account.dart';
import 'Ads.dart';
import 'Cars.dart';
import 'Moters.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                    padding: EdgeInsets.only(left: 10, right: 10),
                  ),
                  child: Icon(Icons.car_repair_outlined), // icon inside the button
                  onPressed: () {
                    Get.to(() => Moterpage());
                    print('Button pressed');
                  },
                ),
                SizedBox(width: 8), // some space between button and text
                Text('Moters'), // text outside the button
              ],
            ),
            actions: [
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.only(left: 1, right: 5),
                    ),
                    child: Icon(Icons.home_work), // icon inside the button
                    onPressed: () {
                      Get.to(() => propertypage());
                      print('Button pressed');
                    },
                  ),
                  SizedBox(width: 8), // some space between button and text
                  Padding(
                    padding: const EdgeInsets.only(left: 1, right: 14),
                    child: Text('Property', style: TextStyle(fontSize: 20)),
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
                              Icon(Icons.location_on_outlined, size: 30),
                              SizedBox(width: 8),
                              Text('Township Block II, Lahore...', style: TextStyle(fontSize: 22)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Icon(Icons.notifications_none, size: 30),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              // width: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.right ,
                              height: 50,
width: 370,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20.0), // Adjust paddings as needed
                                    child: Icon(Icons.search),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'What are you looking for?',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          child: Image.asset('assets/images/download.png'),
                        ),
                      ),
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
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Browse categories', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => adspage()),
                                );
                              },
                              child: Text('See All', style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                      // Browser categories
                      Container(
                        height: 200,
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                                      image: AssetImage('assets/images/download.png'),
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
                      // Moter Bikes
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mobile Phones', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => accountpage()),
                                );
                              },
                              child: Text('See All', style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
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
                              padding: EdgeInsets.only(right: 16), // Space between cards
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 5,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            color: Colors.blue,
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
                            Text('Cars', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the new screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Carspage()),
                                );
                              },
                              child: Text('See All', style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
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
                              padding: EdgeInsets.only(right: 16), // Space between cards
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 5,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 125,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            color: Colors.blue,
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





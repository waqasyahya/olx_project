import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:olx_project/screens/property.dart';

import 'Moters.dart';





class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/olximage.png'), // logo on the left side
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.only(left: 10,right: 10),
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
                  padding: EdgeInsets.only(left: 10,right: 10),
                ),
                child: Icon(Icons.home_work), // icon inside the button
                onPressed: () {
                  Get.to(() => propertypage());
                  print('Button pressed');
                },
              ),
              SizedBox(width: 8), // some space between button and text
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('Property',style: TextStyle(fontSize: 20),),
              ), // text outside the button
            ],
          )
        ],
      ),
      body: ListView(
        children: [
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
                        Text('Township Block II,Lahore...', style: TextStyle(fontSize: 22)),
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
                      padding: const EdgeInsets.all(11),
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search),
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    child: Image.asset('assets/images/download.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
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
                      Text('See All', style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            Text('Image 1'),
                          ],
                        ),
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
                            Text('Image 2'),
                          ],
                        ),
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
                            Text('Image 3'),
                          ],
                        ),
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
                            Text('Image 4'),
                          ],
                        ),
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
                            Text('Image 5'),
                          ],
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
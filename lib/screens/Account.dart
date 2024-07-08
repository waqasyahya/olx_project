
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/Models/Colors.dart';

import 'Setting.dart';

class accountpage extends StatelessWidget {
  const accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    var width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 70),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90, // adjust the width to your liking
                        height: 90, // adjust the height to your liking
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/download.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // add some space between the image and the text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Waqas',
                            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              'View and edit profile',
                              style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.solid, // or TextDecorationStyle.dashed, etc.
                                decorationThickness: 2, // add some space between the text and the underline
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Add more content below the image and text
                  SizedBox(height: 10), // add some space between the top section and the bottom section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10),
                        child: Text('Favorite & Saved', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  SizedBox(height: 1),
                  ListView(
                    shrinkWrap: true, // add this property
                    physics: NeverScrollableScrollPhysics(), // add this property
                    children: [
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Icon(Icons.favorite_border, size: 26),
                        ), // left side icon
                        title: Text(
                          'Searches',
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        ), // main text
                        subtitle: Text(
                          'All of your favorite ads & saved filters',
                          style: TextStyle(fontSize: 16),
                        ), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },// right side icon
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 8.0, bottom: 8.0),
                      ),


                      Divider(),
                      SizedBox(height: 1),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.remove_red_eye_outlined,size: 25,),
                        ), // left side icon
                        title: Text('Public profile',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('See how other view your profile',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),

                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },// right side icon
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),
                      ),
                      Divider(),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.invert_colors_on_sharp, size: 25,),
                        ), // left side icon
                        title: Text('Theme Change', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('Theme will be change ', style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios, size: 24,), // right side icon
                        ), // right side icon
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),
                      ),
                      Divider(),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.event_busy,size: 27,),
                        ), // left side icon
                        title: Text('Buy Discount Packages',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('Sell faster, more & at higher margin with packages',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),
                      Divider(),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.note_outlined,size: 26,),
                        ), // left side icon
                        title: Text('Order and Billing Info',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('Order, billing and invoices',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),
                      Divider(),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.drive_eta_rounded,size: 27,),
                        ), // left side icon
                        title: Text('Delivery Orders',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('Track your selling orbuying delivery orders',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),
                      Divider(),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.settings,size: 27,),
                        ), // left side icon
                        title: Text('Settings',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('privacy and manage account',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThemeSelectionPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                          contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 20,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),



                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.offline_bolt,size: 27,),
                        ), // left side icon
                        title: Text('Help & Support',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('Heip center and legal terms',style: TextStyle(fontSize: 16),), // secondary text below main text
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ), // right side icon
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 20,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Icon(Icons.logout,size: 30,),
                        ), // left side icon
                        title: Text('Logout',style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),), // main text
                        subtitle: Text('',style: TextStyle(fontSize: 18),), // secondary text below main text
                       // right side icon
                        contentPadding: EdgeInsets.only(left: 1.0, right: 20.0, top: 0.0, bottom: 0.0),// right side icon
                      ),
                      // Add more list items here
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

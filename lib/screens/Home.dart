import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

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
                // handle button press here
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
                  padding: EdgeInsets.only(left: 20,right: 26),
                ),
                child: Icon(Icons.home_work), // icon inside the button
                onPressed: () {
                  // handle button press here
                  print('Button pressed');
                },
              ),
              SizedBox(width: 8), // some space between button and text
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 15),
                child: Text('Property',style: TextStyle(fontSize: 20),),
              ), // text outside the button
            ],
          )
        ],
      ),
      body: Container(
        child: Text('this is home page'),
      ),
    );
  }
}

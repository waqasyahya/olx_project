import 'package:flutter/material.dart';

class JobPagePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Jobs',
              style: TextStyle(

                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Add content of jobpage() here, if it's complex, you can create a separate widget for it
            Text(
              'Popup content for jobs',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the popup
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}

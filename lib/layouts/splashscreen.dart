import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Routes/Route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Reduce the duration to 1 second
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      if (_animation.value == 1) {
        // Navigate to the next screen after the animation completes
        Future.delayed(Duration(seconds: 5)).then((_) {
          try {
            Get.offAllNamed(AppRoutes.HOME);
          } catch (e) {
            print('Error navigating to home page: $e');
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF165358), // Set the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xFF165358), // Set the background color
                  radius: 75,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/olximage.png'), // Path to your logo image
                  radius: 75,
                ),
              ],
            ), // Replace with your logo
            SizedBox(height: 20),

            // Animated loading indicator with dots
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 12, // Increase the height of the dots
                      width: 12, // Make the dots' size equal
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(_animation.value), // Animate the opacity of the dots
                        borderRadius: BorderRadius.circular(6), // Increase the border radius to match the height
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
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
      duration: const Duration(seconds: 3), // Animation duration
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      if (_animation.value == 1) {
        // Navigate to the next screen after the animation completes
        Future.delayed(Duration(seconds: 1)).then((_) {
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
                // Add a spinner on top of the image
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Animated loading indicator with dots
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Container(
                  width: 60, // Set the width of the container for the dots
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Opacity(
                        opacity: _animation.value > 0.5 ? 1.0 : 0.0, // Animate the opacity of the dots
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 8, // Increase the height of the dots
                          width: 8, // Make the dots' size equal
                          decoration: BoxDecoration(
                            color: Colors.white, // Set the color of the dots
                            borderRadius: BorderRadius.circular(6), // Increase the border radius to match the height
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
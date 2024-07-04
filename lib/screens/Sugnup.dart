import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/Home.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Light background color
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        await signupWithEmailAndPassword(
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim(),
                        );
                        if (_auth.currentUser != null) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(height: 20),
                    if (_errorMessage.isNotEmpty)
                      Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Already have an account? Login here.',
                        style: TextStyle(color: Colors.blue[800]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = _auth.currentUser;

      if (user != null) {
        Get.snackbar(
          "User signed up",
          "${user.email}",
          margin: EdgeInsets.all(30),
          snackPosition: SnackPosition.TOP,
        );
      } else {
        Get.snackbar(
          "No user found",
          "",
          margin: EdgeInsets.all(30),
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to sign up: ${e.toString()}";
      });
      Get.snackbar(
        "Failed to sign up with email and password",
        e.toString(),
        margin: EdgeInsets.all(30),
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}



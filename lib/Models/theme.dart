import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  // Define your primary and accent colors
  primaryColor: Colors.blue, // Example primary color
  hintColor: Colors.green, // Example accent color

  // Define bottom navigation bar theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.blue, // Example selected item color
    unselectedItemColor: Colors.grey, // Example unselected item color
  ),

  // Define app bar theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white, // Example app bar background color
    elevation: 0, // Example app bar elevation
    // Other app bar styles like titleTextStyle, iconTheme, etc.
  ),
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  // Define dark theme colors and styles
);

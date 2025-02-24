import 'package:box_animation/square_animation/square_animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// The entry point of the application.
///
/// This function initializes the Flutter app and runs the `MyApp` widget.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
///
/// This class sets up the `GetMaterialApp` and defines the home screen.
class MyApp extends StatelessWidget {
  /// Creates an instance of `MyApp`.
  ///
  /// This constructor allows the widget to be instantiated as a constant.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // Hides the debug banner in debug mode.
      debugShowCheckedModeBanner: false,
      // Sets the initial screen of the app.
      home: SquareAnimationScreen(),
    );
  }
}

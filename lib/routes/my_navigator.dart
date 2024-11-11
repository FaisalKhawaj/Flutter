import 'package:flutter/material.dart';

class MyNavigator {
  static Route _createRoute(Widget destination) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);  // Starting position
        const end = Offset.zero;          // Ending position
        const curve = Curves.ease;        // Curve effect

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  // Function to perform navigation to a new screen with a custom transition
  static Future<void> navigateTo(BuildContext context, Widget destination) {
    return Navigator.of(context).push(_createRoute(destination));
  }
}

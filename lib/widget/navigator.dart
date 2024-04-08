import 'package:flutter/material.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/pages/details_page.dart';
import 'package:pet_adoption/pages/history_page.dart';

class NavigatorHelper {
  static void navigateToScreen(
      BuildContext context, String screenName, Pet pet, Color bgColor) {
    if (screenName == 'history_page') {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return history_page();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            );
          },
        ),
      );
    }
    if (screenName == 'PetDetailScreen') {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return PetDetailScreen(
              pet: pet,
              bgColor: bgColor,
            );
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            );
          },
        ),
      );
    }
  }
}

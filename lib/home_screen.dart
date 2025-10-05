import 'package:flutter/material.dart';
import 'appcolors.dart' as AppColors;
class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.appBar,
                AppColors.appBar,
                AppColors.appBar2,
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.menu, size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

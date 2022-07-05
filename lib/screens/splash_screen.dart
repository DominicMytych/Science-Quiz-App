import 'package:quiz_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SplashScreen(
            seconds: 3,
            navigateAfterSeconds: HomeScreen(),
            loaderColor: Colors.transparent,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  'images/quiz.png',
                ),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:dschaei_pi_app/screens/home_screen.dart';
import 'package:dschaei_pi_app/models/snackish_box.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/backgrounds/bg_startscreen.png",
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 200,
              left: 40,
              child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset("assets/graphics/chick_cupcakes.png"))),
          Positioned(
              left: 0,
              right: 0,
              bottom: 60,
              child: Image.asset("assets/details/T2.png",
                  fit: BoxFit.fitWidth)), // Bottom detail image
          Positioned(
            bottom: 90,
            left: 30,
            right: 30,
            child: SnackishBox(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

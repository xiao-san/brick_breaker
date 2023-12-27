import 'package:flutter/material.dart';

import 'dart:async';
import 'package:brick_breaker/coverscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //ball variables
  double ballX = 0;
  double ballY = 0;

  //game settings
  bool hasGameStarted = false;

  void startGame() {
    hasGameStarted = true;
    Timer.periodic(Duration(microseconds: 10), (timer) {
      setState(() {
        ballY += 0.004;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Stack(
          children: [
            
            //tap to play
            CoverScreen(
                hasGameStarted: hasGameStarted,
                onStart: startGame,
                ),
    
            //ball
            Container(
              alignment: Alignment(ballX, ballY),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ));
  }
}

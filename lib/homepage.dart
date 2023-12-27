import 'package:brick_breaker/ball.dart';
import 'package:brick_breaker/player.dart';
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

  //player variables
  double playerX = 0;
  double playerWidth = 0.3;

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
            MyBall(ballX: ballX, ballY: ballY),

            //player 
            MyPlayer(playerX: playerX, playerWidth: playerWidth,)
          ],
        ));
  }
}

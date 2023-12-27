import 'package:flutter/material.dart';

class CoverScreen extends StatelessWidget {
  CoverScreen({required this.hasGameStarted, required this.onStart, super.key});

  final bool hasGameStarted;

  final void Function() onStart;

  @override
  Widget build(BuildContext context) {
    return hasGameStarted
        ? Container()
        : Container(
            alignment:const Alignment(0, -0.2),
            child: GestureDetector(
              onTap: onStart,
              child: Text(
                'Tap to play',
                style: TextStyle(
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          );
  }
}

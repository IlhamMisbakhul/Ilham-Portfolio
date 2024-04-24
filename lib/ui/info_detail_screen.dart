import 'package:flutter/material.dart';

class InfoDetailScreen extends StatelessWidget {
  const InfoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation screenOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 105, 190),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Screen Size: ${screenSize.width.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
            ),
            Text('Screen Orientation: $screenOrientation',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
            )
          ],),
      )
    );
  }
}
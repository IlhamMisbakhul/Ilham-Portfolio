
import 'package:flutter/material.dart';

class PanScreen extends StatefulWidget {
  const PanScreen({super.key});

  @override
  State<PanScreen> createState() => _PanScreen();
}

class _PanScreen extends State<PanScreen> {
  final double boxSize = 150.0;
  int tap = 0;
  int doubletap = 0;
  int long = 0;

  double x = 0.0;
  double y = 0.0;
  

  @override
  Widget build(BuildContext context) {
    if (x == 0){
      centerPosition(context);
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: y,
            left: x,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  tap ++;
                });
              },
              onDoubleTap: (){
                setState(() {
                  doubletap ++;
                });
              },
              onLongPress: (){
                setState(() {
                  long++;
                });
              },
              onPanUpdate: (DragUpdateDetails details){
                setState(() {
                  x += details.delta.dx;
                  y += details.delta.dy;
                });
              },
              child: Container(
                width: boxSize,
                height: boxSize,
                color:  Colors.green,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Text(
        'Taps: $tap - Double Taps: $doubletap - Long Press: $long',
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: 20,
          backgroundColor: Colors.yellow,
          color: Colors.black),
      ),
    );
    
  }
  void centerPosition(BuildContext context){
      x = (MediaQuery.of(context).size.width - boxSize) / 2;
      y = (MediaQuery.of(context).size.height - boxSize) / 2;

      setState(() {
        this.x = x;
        this.y = y;
      });
  }
}

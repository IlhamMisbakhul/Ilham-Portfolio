
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoDetailScreen extends StatefulWidget {
  const InfoDetailScreen({super.key});

  @override
  State<InfoDetailScreen> createState() => _InfoDetailScreenState();
}

class _InfoDetailScreenState extends State<InfoDetailScreen> {
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
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  double vertical = details.delta.dy;
                  y += vertical;
                });
              },
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  double horizontal = details.delta.dx;
                  x += horizontal;
                });
              },
              child: Container(
                width: boxSize,
                height: boxSize,
                color: const Color.fromARGB(255, 243, 33, 33),
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

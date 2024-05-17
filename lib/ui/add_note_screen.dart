import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

double randomBorderRaius(){
  return Random().nextDouble() * 20;
}

double randomMargin(){
  return Random().nextDouble() *20;
}

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  
  final double boxSize = 150.0;

  late double borderRadius;
  late double margin;


  Color containerColor = Colors.blue;
  double x = 0;
  double y = 0;

  void initState(){
    borderRadius = Random().nextDouble();
    margin = Random().nextDouble();
  } 

  void changeState(){
    setState(() {
      borderRadius = randomBorderRaius();
      margin = randomMargin();
    });
  }

  void changeColor(){
    setState(() {
      containerColor = _getRandomColor();
    });
  }

  Color _getRandomColor(){
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
  @override
  Widget build(BuildContext context) {
    if (x == 0){
      centerPosition(context);
    }
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: y,
              left: x,
              child: GestureDetector(
                onTap: changeColor,
                onDoubleTap: () => changeState(),
                onPanUpdate: (DragUpdateDetails details){
                  setState(() {
                    x += details.delta.dx;
                    y += details.delta.dy;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  width: boxSize,
                  height: boxSize,
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(borderRadius)
                  ),
                ),
              ),
            ),
          ],
        ),
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
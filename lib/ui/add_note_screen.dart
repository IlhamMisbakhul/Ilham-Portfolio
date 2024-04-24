import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, constraints){
          if (constraints.maxWidth < 600){
            return ListView(
              children: _generateConstraints(context),
            );
          } else if(constraints.maxWidth < 900){
            return GridView.count(
              crossAxisCount: 2,
              children: _generateConstraints(context),
            );
          } else {
            return GridView.count(crossAxisCount: 2,
            children: _generateConstraints(context),);
          }
        }
    ));
  }

  List<Widget> _generateConstraints(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  Orientation screenOrientation = MediaQuery.of(context).orientation;

  return List<Widget>.generate(5, (index) {
    return Container(
      margin: const EdgeInsets.all(6),
      color: const Color.fromARGB(255, 1, 105, 190),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Screen Size: ${screenSize.width.toStringAsFixed(2)} x ${screenSize.height.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            'Screen Orientation: ${screenOrientation == Orientation.portrait ? 'Potrait' : 'Landscape'}',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  });
}

  }
